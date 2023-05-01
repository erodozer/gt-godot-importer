extends RefCounted

const BitmapHeight = preload("./gdp.gd").BitmapHeight
const BitmapWidth = preload("./gdp.gd").BitmapWidth

const UNITS_TO_METRES = 1.0 / 4096.0

var shadow_material: Material
var tire_material: Material

var rim_mesh: Mesh
var car_data: Array = []

func _init():
	var mat = StandardMaterial3D.new()
	mat.albedo_color = Color.BLACK
	mat.cull_mode = BaseMaterial3D.CULL_DISABLED
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	
	shadow_material = mat
	
	mat = StandardMaterial3D.new()
	mat.albedo_color = Color.BLACK
	mat.cull_mode = BaseMaterial3D.CULL_BACK
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	
	tire_material = mat
	
	# build the rim face with appropriate UVs to map to the car textures
	var st = SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	
	st.set_uv(Vector2(0.0, 0.0))
	st.add_vertex(Vector3(-0.5, -0.5, 0.0))
	
	st.set_uv(Vector2(48.0 / 256.0, 0.0))
	st.add_vertex(Vector3(0.5, -0.5, 0.0))
	
	st.set_uv(Vector2(48.0 / 256.0, 48.0 / 256.0))
	st.add_vertex(Vector3(0.5, 0.5, 0.0))
	
	st.set_uv(Vector2(48.0 / 256.0, 48.0 / 256.0))
	st.add_vertex(Vector3(0.5, 0.5, 0.0))
	
	st.set_uv(Vector2(0.0, 48.0 / 256.0))
	st.add_vertex(Vector3(-0.5, 0.5, 0.0))
	
	st.set_uv(Vector2(0.0, 0.0))
	st.add_vertex(Vector3(-0.5, -0.5, 0.0))
	
	rim_mesh = st.commit()
	
	if FileAccess.file_exists("res://addons/gt_importer/car.json"):
		car_data = JSON.parse_string(FileAccess.get_file_as_string("res://addons/gt_importer/car.json"))

## create a signed short
func short(i: int):
	return wrapi(i, -32768, 32767)
	
func int32(i: int):
	return wrapi(i, -pow(2, 16), pow(2, 16))

func make_wheel(buffer: FileAccess, material: Material, tire_size: Dictionary):
	var x = short(buffer.get_16())
	var y = short(buffer.get_16())
	var z = short(buffer.get_16())
	var w = short(buffer.get_16()) # unknown data
	
	# sanitizes the ids due to a few additional metadata features of the value
	#   -/+ sign indicates flip direction of the tire shape
	#   offset of +1 or +2 indicates left or right side of the vehicle
	# by removing the sign and snapping to the nearest 10 value, we can get
	# the appropriate ID of the tire sizes from GT2's data mapping
	var rim_diameter = tire_size.DiameterInches.to_int() * 0.0254 # inches to meters
	var width = tire_size.WidthMM.to_int() / 1000.0
	var tire_thickness = width * (tire_size.Profile.to_int() / 100.0)
	var tire_diameter = rim_diameter + (tire_thickness * 2.0)
	var scale = signf(w)
	
	var tire_mesh = CylinderMesh.new()
	tire_mesh.radial_segments = 24
	tire_mesh.top_radius = tire_diameter / 2.0
	tire_mesh.bottom_radius = tire_diameter / 2.0
	tire_mesh.height = width
	tire_mesh.material = tire_material
	var tire = MeshInstance3D.new()
	tire.mesh = tire_mesh
	tire.name = "tire"
	tire.position = Vector3(0, width / 2.0, 0)
	
	var rim = MeshInstance3D.new()
	rim.mesh = rim_mesh
	rim.material_override = material
	rim.rotate_x(deg_to_rad(-90))
	rim.scale = Vector3(rim_diameter, rim_diameter, 1.0)
	rim.position = Vector3(0.0, -0.01, 0.0)
	rim.name = "rim"
	
	var wheel = Node3D.new()
	wheel.add_child(tire)
	wheel.add_child(rim)
	
	wheel.position = Vector3(x,y,z) * UNITS_TO_METRES + Vector3(0, tire_thickness, 0)
	wheel.scale = Vector3(1.0, scale, 1.0)
	wheel.rotate_z(deg_to_rad(90))
	wheel.add_to_group("gt2:wheel", true)
	wheel.set_meta("tire", tire_size)

	return wheel
	
func make_face(buffer: FileAccess, is_quad: bool, vertices: Array, normals: Array):
	var v0 = buffer.get_8()
	var v1 = buffer.get_8()
	var v2 = buffer.get_8()
	var v3 = buffer.get_8()
	
	var order_data = buffer.get_16()
	var flags = buffer.get_16() >> 12
	var normals_data = buffer.get_32()
	var face_type = buffer.get_32() >> 24
	
	var render_order = order_data & 0x1F
	
	var n0 = (order_data >> 5) & 0x1FF
	var n1 = (normals_data >> 1) & 0x1FF
	var n2 = (normals_data >> 10) & 0x1FF
	var n3 = (normals_data >> 19) & 0x1FF
	
	var out_v = [v2, v1, v0] # ABC
	var out_n = [n2, n1, n0]
	var raw_v = [v0, v2, v1]
	var raw_n = [n0, n2, n1]
	if is_quad:
		out_v.append_array([v3, v2, v0]) #ACD
		out_n.append_array([n3, n2, n0])
		raw_v.insert(1, v3)
		raw_n.insert(1, n3)
		
	return {
		"vertices": out_v.map(func (x): return vertices[x]),
		"normals": out_n.map(func (x): return normals[x]),
		"raw_vertices": raw_v.map(func (x): return vertices[x]),
		"raw_normals": raw_n.map(func (x): return normals[x]),
		"flags": flags,
		"face_type": face_type,
		"render_order": render_order
	}
	
func make_uv(buffer, is_quad, vertices, normals):
	var polygon = make_face(buffer, is_quad, vertices, normals)
	
	var uv0 = Vector2(buffer.get_8() / 255.0, buffer.get_8() / 255.0)
	var raw_palette_index = buffer.get_16()
	var palette_index = (raw_palette_index >> 4) + (raw_palette_index & 0x3F)
	var uv1 = Vector2(buffer.get_8() / 255.0, buffer.get_8() / 255.0)
	var unknown_13 = buffer.get_8()
	var unknown_14 = buffer.get_8()
	
	var uv2 = Vector2(buffer.get_8() / 255.0, buffer.get_8() / 255.0)
	var uv3 = Vector2(buffer.get_8() / 255.0, buffer.get_8() / 255.0)
	
	var uvs = [uv2, uv1, uv0]
	var raw_uvs = [uv0, uv2, uv1]
	if is_quad:
		uvs.append_array([uv3, uv2, uv0])
		raw_uvs.insert(1, uv3)
	
	return {
		"vertices": polygon.vertices,
		"normals": polygon.normals,
		"flags": polygon.flags,
		"face_type": polygon.face_type,
		"uvs": uvs,
		"raw_vertices": polygon.raw_vertices,
		"raw_normals": polygon.raw_normals,
		"raw_uvs": raw_uvs,
		"palette": palette_index,
		"render_order": polygon.render_order
	}
	
func uvs_to_pixels(uvs):
	# copy pixels to merged texture
	var copy = []
	
	# create bounding box from uvs
	var min_x = 256
	var min_y = 256
	var max_x = 0
	var max_y = 0
	for uv in uvs:
		var scaled = Vector2(uv * 256)
		min_x = min(min_x, scaled.x)
		min_y = min(min_y, scaled.y)
		max_x = max(max_x, scaled.x)
		max_y = max(max_y, scaled.y)
	
	return Rect2i(
		min_x, min_y,
		max_x - min_x + 1, max_y - min_y + 1
	)

func uvs_to_pixels_brute(uvs: Array):
	var pixels = []
	for i in range(0, len(uvs), 3):
		var a = uvs[i] * 256
		var b = uvs[i+1] * 256
		var c = uvs[i+2] * 256
		
		for x in range(256):
			for y in range(256):
				var point = Vector2(x, y)
				if Geometry2D.point_is_inside_triangle(
					point,
					a, b, c
				):
					pixels.append(Vector2i(point))
		
	return pixels
	
func make_lod(buffer: FileAccess, colors: Dictionary):
	var vertex_count = buffer.get_16()
	var normal_count = buffer.get_16()
	var tri_count = buffer.get_16()
	var quad_count = buffer.get_16()
	buffer.get_32() # skip ahead
	var uv_tri_count = buffer.get_16()
	var uv_quad_count = buffer.get_16()
	var unknown = buffer.get_buffer(44)
	
	var low_bound = Vector4(
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
	)
	var high_bound = Vector4(
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
	)
	
	var scale = buffer.get_16() - 16
	if scale < 0:
		scale = 1.0 / (1 << -scale)
	else:
		scale = 1 << scale
	var unknown2 = buffer.get_8()
	var unknown3 = buffer.get_8()
	
	var vertices = []
	for i in range(vertex_count):
		vertices.append(Vector3(
			short(buffer.get_16()),
			short(buffer.get_16()),
			short(buffer.get_16()),
		) * scale * UNITS_TO_METRES)
		buffer.get_16()
		
	var normals = []
	var n_max = [0,0,0]
	var n_min = [0,0,0]
	var sign_bit = (1 << 9)
	for _i in range(normal_count):
		var i = buffer.get_32()
		normals.append(Vector3(
			(((i >> 2) & 0x3FF) ^ sign_bit) - sign_bit,
			(((i >> 12) & 0x3FF) ^ sign_bit) - sign_bit,
			(((i >> 22) & 0x3FF) ^ sign_bit) - sign_bit
		) / 500.0)
	
	var mesh = ArrayMesh.new()
	var st = SurfaceTool.new()
	
	var draw_polygons = func (count, quad, uv):
		if count == 0:
			return
			
		var idx = 0
		var faces = []
		for _i in range(count):
			var f
			if not uv:
				f = make_face(buffer, quad, vertices, normals)
			else:
				f = make_uv(buffer, quad, vertices, normals)
			f["idx"] = idx
			faces.append(f)
			idx += 1
		
		faces.sort_custom(
			func (a, b):
				if a.render_order < b.render_order:
					return true
				# force consistency
				return a.idx < b.idx
		)
		# render order is desc
		faces.reverse()

		for f in faces:
			st.add_triangle_fan(
				f.raw_vertices,
				f.raw_uvs if uv else [],
				[],[],
				f.raw_normals
			)
			
			# copy pixels to merged texture
			if uv:
				var copy = uvs_to_pixels(f.uvs)
				for _c in colors.values():
					_c.merged.blend_rect(
						_c.palettes[f.palette], copy, copy.position
					)
			
	# build non-textured surface
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	draw_polygons.call(tri_count, false, false)
	draw_polygons.call(quad_count, true, false)
	mesh = st.commit(mesh)
	mesh.surface_set_name(
		0,
		"shadow"
	)
	
	# build textured surface
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	draw_polygons.call(uv_tri_count, false, true)
	draw_polygons.call(uv_quad_count, true, true)
	mesh = st.commit(mesh)
	mesh.surface_set_name(
		1,
		"chassis"
	)
	
	var instance = MeshInstance3D.new()
	instance.mesh = mesh
	
	return instance

func make_shadow(buffer: FileAccess):
	var vertex_count = buffer.get_16()
	var tri_count = buffer.get_16()
	var quad_count = buffer.get_16()
	buffer.get_16() # skip ahead
	
	var low_bound = Vector4(
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
	)
	var high_bound = Vector4(
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
		short(buffer.get_16()),
	)
	
	var scale = buffer.get_16() - 16
	if scale < 0:
		scale = 1.0 / (1 << -scale)
	else:
		scale = 1 << scale
	var unknown2 = buffer.get_8()
	var unknown3 = buffer.get_8()
	
	var vertices = []
	for i in range(vertex_count):
		vertices.append(Vector3(
			short(buffer.get_16()),
			0.0,
			short(buffer.get_16()),
		) * scale * UNITS_TO_METRES)
		
	var st = SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	
	for _i in range(tri_count):
		var data = buffer.get_32()
		st.add_triangle_fan(
			[
				vertices[data >> 12 & 0x3F],
				vertices[data >> 6 & 0x3F],
				vertices[data & 0x3F],
			]
		)
		
	for _i in range(quad_count):
		var data = buffer.get_32()
		st.add_triangle_fan(
			[
				vertices[data >> 18 & 0x3F],
				vertices[data >> 12 & 0x3F],
				vertices[data >> 6 & 0x3F],
				vertices[data & 0x3F]
			]
		)
		
	var mesh = st.commit()
	
	mesh.surface_set_material(0, shadow_material)
	mesh.surface_set_name(0, "shadow")
	
	var m = MeshInstance3D.new()
	m.mesh = mesh
	
	return m

func parse_model(source_file: String, palettes: Dictionary, include_wheels = true, include_shadow = false):
	var file = FileAccess.open(source_file, FileAccess.READ)
	if file == null:
		return FileAccess.get_open_error()
	
	var root = Node3D.new()

	var car_id = source_file.get_file().rsplit(".", false, 1)[0]
	var data:Dictionary = car_data.filter(func (x): return x.CarId == car_id).front()
	
	# read header
	file.seek(0x08)
	var unknown_1 = file.get_16()
	if unknown_1 == 0:
		file.seek(0x18)
		unknown_1 = file.get_16()
	var unknown_2 = file.get_16()
	var unknown_3 = file.get_16()
	var unknown_4 = file.get_16()
	
	var mat = StandardMaterial3D.new()
	mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA_SCISSOR
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST_WITH_MIPMAPS
	mat.resource_local_to_scene = true
	
	# read wheel positions
	var scale = 0.0
	if include_wheels and data != null:
		var wheels = []
		for i in range(4):
			var wheel = make_wheel(file, mat, data["TiresFront" if i < 2 else "TiresRear"].WheelSize)
			wheel.name = "wheel_%02d" % i
			root.add_child(wheel)
			wheels.append(wheel)
			wheel.owner = root
			for c in wheel.get_children():
				c.owner = root
	
		scale = data.Suspension.DefaultHeightFront.to_int() / 1000.0 # height in mm
		
	file.get_buffer(0x828) # skip ahead
	var lodCount = file.get_16()
	
	var unknown_5 = file.get_buffer(26)
	
	var lods = []
	for i in range(lodCount):
		var lod = make_lod(file, palettes)
		lod.position = Vector3(0, scale, 0)
		
		lod.set_surface_override_material(0, shadow_material)
		lod.set_surface_override_material(1, mat)
		
		if lods.is_empty():
			lod.name = "body"
			lods.append(lod)
			lod.add_to_group("gt2:body", true)
		
	if include_shadow:
		var shadow = make_shadow(file)
		shadow.name = "shadow"
		root.add_child(shadow)
		shadow.owner = root
	
	for lod in lods:
		root.add_child(lod)
		lod.owner = root

	file.close()
	
	# convert images to textures
	var textures: Array[ImageTexture] = []
	for c in palettes.values():
		var tex = ImageTexture.create_from_image(c.merged)
		textures.append(tex)
	
	mat.albedo_texture = textures.front()
	
	var palette_node = Node.new()
	palette_node.name = "palettes"
	palette_node.set_meta("colors", textures)
	root.add_child(palette_node)
	palette_node.owner = root
	
	
	return root

## Swap the color texture for a car model
static func apply_palette(car: Node, palettes: Array, idx: int):
	var tex = palettes[idx]
	for mesh in car.get_children():
		if mesh.is_in_group("gt2:wheel"):
			var wheel = mesh.get_node("rim") as MeshInstance3D
			# only override the wheel
			var mat = wheel.material_override
			mat.albedo_texture = tex
		elif mesh.is_in_group("gt2:body"):
			var body = mesh as MeshInstance3D
			# all textured surfaces share the same resource
			# so we can just swap it on one and affect all
			var mat = mesh.get_surface_override_material(
				1
			) as BaseMaterial3D
			mat.albedo_texture = tex
