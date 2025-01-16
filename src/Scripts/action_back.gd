extends Label

@export var world: Node3D

const DESCRIPTION_LIST = ["projects", "education", "games", "career", "drawings"]


func update_text():
	if world.focus == 0:
		set_text("Press ENTER to view projects")
	if world.focus == 1:
		set_text("Press ENTER to view education")
	if world.focus == 2:
		set_text("Press ENTER to view games")
	if world.focus == 3:
		set_text("Press ENTER to view career")
	if world.focus == 4:
		set_text("Press ENTER to view drawings")
