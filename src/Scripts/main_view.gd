extends Control

# TABLE, DRAWER, SHELF, COUCH, BED
const DESCRIPTION_LIST = ["PROJECT ", "SCHOOLS ", "GAMEDEV ", "WORKEXP ", "DRAWING "]

@export var world: Node3D

func update():
	$Number.text = "0" + str(world.focus)
	$Description.text = DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus]
