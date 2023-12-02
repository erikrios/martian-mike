class_name JumpPad extends Area2D

@export var jump_force := 300

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		animated_sprite_2d.play("jump")
		body.jump(jump_force)
