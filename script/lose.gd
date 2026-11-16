extends Node2D

func _process(delta: float) -> void:
	$LoseScreen.modulate.a += 2.0 * delta
	

func _input(event: InputEvent) -> void:
	#if event.is_pressed() and not event.is_echo():
		#get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	pass
