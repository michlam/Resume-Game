extends Control

@export var world: Node3D
const DESCRIPTION_LIST = ["Projects", "Education", "Games", "Career", "Drawings"]
const BUTTON_SELECTED_BASE_X = 1367
const BUTTON_SELECTED_OFFSET = 50

func _ready():
	$AnimationPlayer.play("arrows_idle")


func update_focus():
	$Description.set_text(DESCRIPTION_LIST[world.focus]);
	$Buttons/ButtonSelected.position.x = BUTTON_SELECTED_BASE_X + world.focus * BUTTON_SELECTED_OFFSET
	$AnimationPlayer.stop()
	$AnimationPlayer.play("arrows_idle")
