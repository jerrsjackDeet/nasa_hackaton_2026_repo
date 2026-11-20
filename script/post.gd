extends Node2D

@onready var button_o2 = $"o2/Oxygenbubble/Tombol-masuk-normal"
@onready var button_health = $"medic_center/Medis&radiationBubble/Tombol-masuk-normal"
@onready var button_elect = $"listrik/Energybubble/Tombol-masuk-normal"

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	
	Varglob.mainmenu = false
	
	if Varglob.ask_out_post == true:
		$"door_out_facility/Tombol-masuk-normal".visible = true
	else:
		$"door_out_facility/Tombol-masuk-normal".visible = false
	if Input.is_action_pressed("f") and Varglob.ask_out_post == true:
		get_tree().change_scene_to_file("res://scene/outpost.tscn")
	
	if Varglob.ask_in_o2 == true:
		$o2/Oxygenbubble.visible = true
		if Input.is_action_just_pressed("f") and Varglob.o2_on == false:
			Varglob.o2_on = true
		elif  Input.is_action_just_pressed("f") and Varglob.o2_on == true:
			Varglob.o2_on = false
	else:
		$o2/Oxygenbubble.visible = false
		
	if Varglob.ask_in_health == true:
		$"medic_center/Medis&radiationBubble".visible = true
		if Input.is_action_just_pressed("f") and Varglob.health_on == false:
			Varglob.health_on = true
		elif Input.is_action_just_pressed("f") and Varglob.health_on == true:
			Varglob.health_on = false
	else:
		$"medic_center/Medis&radiationBubble".visible = false
		
	if Varglob.ask_in_elect == true:
		$listrik/Energybubble.visible = true
		if Input.is_action_just_pressed("f") and Varglob.elect_on == false:
			Varglob.elect_on = true
		elif Input.is_action_just_pressed("f") and Varglob.elect_on == true:
			Varglob.elect_on = false
	else:
		$listrik/Energybubble.visible = false
		
	if Varglob.o2_on == true:
		button_o2.modulate = Color("646464")
	if Varglob.o2_on == false:
		button_o2.modulate = Color("ffffff")
		
	if Varglob.health_on == true:
		button_health.modulate = Color("646464")
	if Varglob.health_on == false:
		button_health.modulate = Color("ffffff")
		
	if Varglob.elect_on == true:
		button_elect.modulate = Color("646464")
	if Varglob.elect_on == false:
		button_elect.modulate = Color("ffffff")
