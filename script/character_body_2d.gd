extends RigidBody2D

var dir
var dalam_task1 = false
var ask_go_out = false
var ask_in_post = false
var ask_in_hidro = false

func _ready() -> void:
	pass
func _process(_delta) -> void:
	#hadap char
	if dir < 0:
		$anim_char.flip_h = true
		$anim_char.play("walk")
	if dir > 0:
		$anim_char.flip_h = false
		$anim_char.play("walk")
	if dir == 0:
		$anim_char.play("idle")
		
		
	
	
	if get_tree().current_scene.scene_file_path == "res://scene/post.tscn":
		if dalam_task1 == true:
			$"../Area2D/ProgressBar".value += 0.3
		if $"../Area2D/ProgressBar" .value == 100:
			$UI_task/day_1/ColorRect.visible = true
		
		
			
	
func _physics_process(_delta) -> void:
	dir = Input.get_axis("a", "d")
	linear_velocity.x = dir * 500
	if Input.is_action_pressed("a") or Input.is_action_pressed("d"):
		if $RayCast2D.is_colliding():
			linear_velocity.y -= 30
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	dalam_task1 = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	dalam_task1 = false


func _on_door_out_facility_body_entered(body: Node2D) -> void:
	Varglob.ask_out_post = true

func _on_door_out_facility_body_exited(body: Node2D) -> void:
	Varglob.ask_out_post = false


func _on_door_post_body_entered(body: Node2D) -> void:
	Varglob.ask_in_post = true


func _on_door_post_body_exited(body: Node2D) -> void:
	Varglob.ask_in_post = false
