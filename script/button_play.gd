extends TextureButton

func _process(delta: float) -> void:
	if is_hovered():
		modulate = Color(0.5,0.5,0.5)
	else:
		modulate = Color(1,1,1)
