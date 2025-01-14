extends Node3D

# TABLE, DRAWER, SHELF, COUCH, BED
const FOCUS_LIST = ["TABLE", "DRAWER", "SHELF", "COUCH", "BED"]

@onready var focus = 0 # corresponds to index for focus list
@onready var camera = $Camera3D
@onready var ap = $AnimationPlayer

func _ready() -> void:
	pass;


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("move_left"):
		animate_move_left()
		focus = (focus - 1) % FOCUS_LIST.size()
	if Input.is_action_just_pressed("move_right"):
		animate_move_right()
		focus = (focus + 1) % FOCUS_LIST.size()


func animate_move_right():
	if focus == 0:
		ap.play("camera_from_table_to_drawer")
	if focus == 1:
		pass
	if focus == 2:
		pass
	if focus == 3:
		pass


func animate_move_left():
	pass
