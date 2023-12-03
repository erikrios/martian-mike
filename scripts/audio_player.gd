extends Node

var hurt := preload("res://assets/audio/hurt.wav")
var jump := preload("res://assets/audio/jump.wav")

func play_sfx(sfx_name: String) -> void:
	var asp = AudioStreamPlayer.new()
	asp.stream = hurt if sfx_name == "hurt" else jump
	asp.name = "SFX"
	
	add_child(asp)
	
	asp.play()
	await asp.finished
	asp.queue_free()
