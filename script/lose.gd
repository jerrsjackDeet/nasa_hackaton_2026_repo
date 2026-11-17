extends CanvasLayer

var can_press: bool = false
var delay_timer: float = 0.0

func _process(delta: float) -> void:
	if not visible:
		can_press = false
		delay_timer = 0.0
		for child in get_children():
			if child is Control:
				child.modulate.a = 0.0
		return

	for child in get_children():
		if child is Control:
			child.modulate.a = min(child.modulate.a + 2.0 * delta, 1.0)

	if not can_press:
		delay_timer += delta
		if delay_timer >= 0.5:
			can_press = true

func _input(event: InputEvent) -> void:
	if not visible or not can_press:
		return

	if event is InputEventKey and event.pressed and not event.echo:
		if event.keycode in [KEY_W, KEY_A, KEY_S, KEY_D]:
			return
		can_press = false
		Varglob.reset_game()
		get_tree().paused = false
		get_tree().change_scene_to_file("res://scene/outpost.tscn")
		
	elif event is InputEventMouseButton and event.pressed:
		can_press = false
		Varglob.reset_game()
		get_tree().paused = false
		get_tree().change_scene_to_file("res://scene/outpost.tscn")
		
