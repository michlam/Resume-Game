extends Control

const DESCRIPTION_LIST = ["PROJECTS ", "EDUCATION ", "GAMEDEV ", "CAREER ", "DRAWINGS "]

@export var world: Node3D

func _ready():
	$AnimationPlayer.play("action_bg_idle")

func update_focus():
	$Left/Number.text = "0" + str(world.focus)
	$Left/Description.text = DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus] + DESCRIPTION_LIST[world.focus]
	$Left/Description.update_shader()
	$Action/ActionBack.update_text()
	$Action/ActionFront.update_text()
	$Top.update_focus()
