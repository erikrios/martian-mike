extends Node2D

class_name Level

@export var next_level: PackedScene = null
@export var level_time := 5
@onready var start: Start = $Start
@onready var exit: Exit = $Exit
@onready var deathzone: Area2D = $Deathzone
@onready var hud: HUD = $UILayer/HUD

var player: Player = null

var timer_node: Timer = null
var time_left: int

var win := false

func _ready() -> void:
	player = get_tree().get_first_node_in_group("player")
	if player != null:
		player.global_position = start.get_spawn_pos()
	
	var traps := get_tree().get_nodes_in_group("traps")
	for trap in traps:
		trap.touched_player.connect(_on_trap_touched_player)
		
	exit.body_entered.connect(_on_exit_body_entered)
	deathzone.body_entered.connect(_on_deathzone_body_entered)
	
	timer_node = Timer.new()
	timer_node.name = "LevelTimer"
	timer_node.wait_time = 1
	timer_node.timeout.connect(_on_level_timer_timeout)
	add_child(timer_node)
	timer_node.start()
	
	time_left = level_time
	hud.set_time_label(time_left)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

func _on_deathzone_body_entered(body: Node2D) -> void:
	reset_player()
	time_left = level_time

func _on_trap_touched_player() -> void:
	reset_player()
	time_left = level_time
	
func reset_player() -> void:
	player.velocity = Vector2.ZERO
	player.global_position = start.get_spawn_pos()

func _on_exit_body_entered(body: Node2D) -> void:
	if body is Player:
		exit.animate()
		if next_level != null:
			await get_tree().create_timer(1.5).timeout
			get_tree().change_scene_to_packed(next_level)
			win = true
			
func _on_level_timer_timeout():
	if not win:
		time_left -= 1
		hud.set_time_label(time_left)
		if time_left < 0:
			reset_player()
			time_left = level_time
			hud.set_time_label(time_left)
