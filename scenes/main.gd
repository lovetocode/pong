extends Node2D

@onready var player_paddle = $Paddle
@onready var enemy_paddle = $Enemy_paddle
@onready var ball = $Ball as Ball


var player_points = 0 
var enemy_points = 0

func _on_enemy_scored():
	enemy_points += 1
	reset_game_state()

func _on_player_scored():
	player_points += 1
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 0
	player_paddle.global_position.y = 0
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	enemy_paddle.linear_velocity = Vector2.ZERO
	player_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
	
	
	
