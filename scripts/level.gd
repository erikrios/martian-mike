extends Node2D

class_name Level

@onready var player: Player = $Player
@onready var start_position: Marker2D = $StartPosition

func _ready() -> void:
	player.global_position = start_position.global_position

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func _on_deathzone_body_entered(body: Node2D) -> void:
	reset_player()

func _on_trap_touched_player() -> void:
	reset_player()
	
func reset_player() -> void:
	player.velocity = Vector2.ZERO
	player.global_position = start_position.global_position
