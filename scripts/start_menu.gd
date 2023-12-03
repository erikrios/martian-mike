class_name StartMenu extends Control

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
