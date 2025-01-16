extends Control

# TABLE, DRAWER, SHELF, COUCH, BED
const DESCRIPTION_LIST = ["PROJECTS ", "EDUCATION ", "GAMEDEV ", "CAREER ", "DRAWINGS "]

@export var world: Node3D

func update():
	$Number.text = "0" + str(world.focus)
	$Description.text = DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus]
	$Description.update_shader()
