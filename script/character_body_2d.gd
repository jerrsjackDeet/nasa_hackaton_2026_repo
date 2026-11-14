extends CharacterBody2D

var dalam_task1 = false


func _ready() -> void:
	pass
func _process(_delta) -> void:
	if dalam_task1 == true:
		$"../UI_task/ProgressBar".value += 0.3
	if $"../UI_task/ProgressBar".value == 100:
		$"../UI_task/day_1/ColorRect".visible = true
func _physics_process(_delta) -> void:
	move_and_slide()
	var dir = Input.get_axis("ui_left", "ui_right")
	velocity.x = dir * 500
	velocity.y = 0
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	dalam_task1 = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	dalam_task1 = false
