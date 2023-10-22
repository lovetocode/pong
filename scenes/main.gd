extends Node2D

@onready var player_paddle = $Paddle
@onready var enemy_paddle = $Enemy_paddle
@onready var ball = $Ball as Ball
@onready var ui = $UI as UI
@onready var explosion = $SFX/AudioStreamPlayer


var player_points = 0 
var enemy_points = 0


func _on_enemy_scored():
	enemy_points += 1
	ui.update_enemy_points(enemy_points)
	explosion.play()
	await get_tree().create_timer(1).timeout
	reset_game_state()

func _on_player_scored():
	player_points += 1
	ui.update_player_points(player_points)
	explosion.play()
	await get_tree().create_timer(1).timeout
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 0
	player_paddle.global_position.y = 0
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	enemy_paddle.linear_velocity = Vector2.ZERO
	player_paddle.linear_velocity = Vector2.ZERO
	enemy_paddle.global_position.x = 1000
	ball.start_ball()
	
func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	
	
	
	
