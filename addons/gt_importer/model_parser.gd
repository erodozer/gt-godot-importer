@tool
extends EditorSceneFormatImporter

enum Presets { DEFAULT }

func _get_importer_name():
	return "erodozer.gt2.car_mesh"

func _get_visible_name():
	return "GT2 Car"

func _get_extensions():
	return ["cdo", "cno"]

func _get_priority():
	return 1

func _get_import_options(path):
	return [{
		"name": "include_materials",
		"default_value": true
	}, {
		"name": "include_wheels",
		"default_value": true
	}, {
		"name": "include_shadow",
		"default_value": false
	}]

func _get_import_order():
	return 0

func _get_option_visibility(path, option, options):
	return true
	
func _import_scene(source_file, flags, options):
	var color_parser = preload("./gdp.gd").new()
	var shape_parser = preload("./gdo.gd").new()
	
	var extension = source_file.get_extension()
	var is_night = extension == "cno"
	var palette_ext = ".cnp" if is_night else ".cdp"
	var colors = color_parser.parse_palette(
		source_file.get_basename() + palette_ext
	)

	if not (colors is Dictionary):
		push_error("failed to import %s.%s" % [source_file.get_basename(), palette_ext])
		return FAILED

	var model = shape_parser.parse_model(
		source_file, colors, options.include_wheels, options.include_shadow
	)
	
	if not model:
		push_error("failed to import %s" % source_file)
		return FAILED
	
	model.name = source_file.get_file().replace(".", "_")

	return model
