class_name Exit extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func animate() -> void:
	animated_sprite_2d.play("default")
