class_name Start extends StaticBody2D

@onready var spawn_position: Marker2D = $SpawnPosition

func get_spawn_pos() -> Vector2:
	return spawn_position.global_position
