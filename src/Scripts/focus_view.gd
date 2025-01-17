extends Control

func _ready():
	visible = false


func _process(delta: float) -> void:
	if !visible:
		return
