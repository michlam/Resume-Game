extends Node3D

var world_scene = preload("res://src/Scenes/world.tscn")

func _ready() -> void:
	var world_instance = world_scene.instantiate()
	add_child(world_instance)
