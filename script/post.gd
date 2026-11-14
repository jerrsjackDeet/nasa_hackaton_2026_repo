extends Node2D

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if Varglob.ask_out_post == true:
		$door_out_facility/press_hint.visible = true
	else:
		$door_out_facility/press_hint.visible = false
	if Input.is_action_pressed("f") and Varglob.ask_out_post == true:
		get_tree().change_scene_to_file("res://scene/outpost.tscn")
	
