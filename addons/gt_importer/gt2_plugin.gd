@tool
extends EditorPlugin

var import_plugin

func _enter_tree():
	import_plugin = preload("./model_parser.gd").new()
	add_scene_format_importer_plugin(import_plugin)

func _exit_tree():
	remove_scene_format_importer_plugin(import_plugin)
	import_plugin = null
