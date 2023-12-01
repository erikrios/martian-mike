extends CharacterBody2D

class_name Player

@export var gravity := 400
@export var jump_force := 200
@export var speed := 125

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
		if velocity.y > 500:
			velocity.y = 500
		
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force
	
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	
	move_and_slide() 
