extends Control

# TABLE, DRAWER, SHELF, COUCH, BED
const DESCRIPTION_LIST = ["PROJECTS", "EDUCATION", "GAMES", "CAREER", "OTHER"]

@export var world: Node3D

func update():
	$Description.text = DESCRIPTION_LIST[world.focus]
