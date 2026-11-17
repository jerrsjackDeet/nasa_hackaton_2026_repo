extends Node2D

var can_press = false
var delay = 2

func _process(delta: float) -> void:
	if visible == true:
		modulate.a += 2.0 * delta
		delay -= delta
		if delay <= 0:
			delay = 3
			can_press = true
			


func _input(event: InputEvent) -> void:
	
	if event.is_pressed() and not event.is_echo() and can_press == true:
		Varglob.winG = false
		Varglob.winP = false
		can_press = false
		Varglob.reset_game()
		get_tree().change_scene_to_file("res://scene/main_menu.tscn")
		
		
		
