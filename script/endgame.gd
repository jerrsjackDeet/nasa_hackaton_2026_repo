extends Node2D

func _ready() -> void:
	modulate.a = 0
func  _process(delta: float) -> void:
	if visible == true:
		modulate.a += 2 * delta
		
