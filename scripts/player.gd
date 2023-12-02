extends CharacterBody2D

class_name Player

@export var gravity := 400
@export var jump_force := 200
@export var speed := 125

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	handle_jump()
	var direction := get_direction()
	handle_character_direction(direction)
	handle_movement(direction)
	move_and_slide() 
	update_animations(direction)

func apply_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
		if velocity.y > 500:
			velocity.y = 500

func handle_jump() -> void:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		jump(jump_force)

func get_direction() -> int:
	return Input.get_axis("move_left", "move_right")

func handle_character_direction(direction: int) -> void:
	if direction != 0:
		animated_sprite_2d.flip_h = direction == -1

func handle_movement(direction: int) -> void:
	velocity.x = direction * speed

func update_animations(direction: int) -> void:
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
	else:
		if velocity.y < 0:
			animated_sprite_2d.play("jump")
		else:
			animated_sprite_2d.play("fall")

func jump(force: int) -> void:
	velocity.y = -force
	
