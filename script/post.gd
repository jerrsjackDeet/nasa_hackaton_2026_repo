extends Node2D

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if Varglob.ask_out_post == true:
		$"door_out_facility/Tombol-masuk-normal".visible = true
	else:
		$"door_out_facility/Tombol-masuk-normal".visible = false
	if Input.is_action_pressed("f") and Varglob.ask_out_post == true:
		get_tree().change_scene_to_file("res://scene/outpost.tscn")
	
	if Varglob.ask_in_o2 == true:
		$o2/Oxygenbubble.visible = true
	else:
		$o2/Oxygenbubble.visible = false
		
	if Varglob.ask_in_health == true:
		$"medic_center/Medis&radiationBubble".visible = true
	else:
		$"medic_center/Medis&radiationBubble".visible = false
		
	if Varglob.ask_in_elect == true:
		$listrik/Energybubble.visible = true
	else:
		$listrik/Energybubble.visible = false
