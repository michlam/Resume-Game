extends Node3D

# TABLE, DRAWER, SHELF, COUCH, BED
const FOCUS_LIST = ["TABLE", "DRAWER", "SHELF", "COUCH", "BED"]

@onready var focus = 0 # corresponds to index for focus list
@onready var camera = $Camera3D
@onready var ap = $AnimationPlayer

@onready var main_view = $UI/MainView

func _ready() -> void:
	pass;


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("move_left"):
		if ap.is_playing():
			return
			
		animate_move_left()
		focus = (focus + 4) % FOCUS_LIST.size()
		main_view.update_focus()
		
	if Input.is_action_just_pressed("move_right"):
		if ap.is_playing():
			return
			
		animate_move_right()
		focus = (focus + 1) % FOCUS_LIST.size()
		main_view.update_focus()



func animate_move_right():
	if focus == 0:
		ap.play("camera_from_table_to_drawer")
	if focus == 1:
		ap.play("camera_from_drawer_to_shelf")
	if focus == 2:
		ap.play("camera_from_shelf_to_couch")
	if focus == 3:
		ap.play("camera_from_couch_to_bed")
	if focus == 4:
		ap.play("camera_from_bed_to_table")


func animate_move_left():
	if focus == 0:
		ap.play("camera_from_table_to_bed")
	if focus == 1:
		ap.play("camera_from_drawer_to_table")
	if focus == 2:
		ap.play("camera_from_shelf_to_drawer")
	if focus == 3:
		ap.play("camera_from_couch_to_shelf")
	if focus == 4:
		ap.play("camera_from_bed_to_couch")
