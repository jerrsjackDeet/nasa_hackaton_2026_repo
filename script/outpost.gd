extends Node2D

@onready var button_hidro = $"hidroponik/Tombol-masuk-normal2"

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	
	Varglob.mainmenu = false
	
	if Varglob.ask_in_post == true:
		$"door_post/Tombol-masuk-normal".visible = true
	else:
		$"door_post/Tombol-masuk-normal".visible = false
	if Input.is_action_pressed("f") and Varglob.ask_in_post == true:
		get_tree().change_scene_to_file("res://scene/post.tscn")
	
	
	if Varglob.ask_in_hidro == true:
		$hidroponik/Hidroponikbubble.visible = true
		$"hidroponik/Tombol-masuk-normal2".visible = true
		if Input.is_action_just_pressed("f") and Varglob.hidro_on == false:
			Varglob.hidro_on = true
			
		elif Input.is_action_just_pressed("f") and Varglob.hidro_on == true:
			Varglob.hidro_on = false
	else:
		$hidroponik/Hidroponikbubble.visible = false
		$"hidroponik/Tombol-masuk-normal2".visible = false
		
		
	if Varglob.hidro_on == true:
		button_hidro.modulate = Color("646464")
	if Varglob.hidro_on == false:
		button_hidro.modulate = Color("ffffff")
