extends Label

@export var world: Node3D
var shader

func update_shader():
	if world.focus == 0:
		shader = load("res://src/Shaders/description_project.gdshader")
	if world.focus == 1:
		shader = load("res://src/Shaders/description_schools.gdshader")
	if world.focus == 2:
		shader = load("res://src/Shaders/description_gamedev.gdshader")
	if world.focus == 3:
		shader = load("res://src/Shaders/description_workexp.gdshader")
	if world.focus == 4:
		shader = load("res://src/Shaders/description_drawing.gdshader")
	
	material.set("shader", shader)
