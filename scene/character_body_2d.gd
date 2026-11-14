extends CharacterBody2D

# =============================================
#   PLATFORMER 2D - Godot 4
#   + Flip kiri / kanan
# =============================================

@export var speed: float = 200.0
@export var jump_force: float = -450.0

var gravity: float = 980.0

@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	# === GRAVITASI ===
	if not is_on_floor():
		velocity.y += gravity * delta

	# === JUMP ===
	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = jump_force

	# === GERAK KIRI / KANAN ===
	if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		velocity.x = -speed
		if is_instance_valid(sprite):
			sprite.flip_h = true    # Hadap KIRI ←

	elif Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		velocity.x = speed
		if is_instance_valid(sprite):
			sprite.flip_h = false   # Hadap KANAN →

	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
