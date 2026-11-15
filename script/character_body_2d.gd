extends RigidBody2D

var dir
var dalam_task1 = false


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
		
		
	
func _physics_process(_delta) -> void:
	dir = Input.get_axis("a", "d")
	linear_velocity.x = dir * 300
	if Input.is_action_pressed("a") or Input.is_action_pressed("d"):
		if $RayCast2D.is_colliding():
			linear_velocity.y -= 25
		

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


func _on_hidroponik_body_entered(body: Node2D) -> void:
	Varglob.ask_in_hidro = true


func _on_hidroponik_body_exited(body: Node2D) -> void:
	Varglob.ask_in_hidro = false
