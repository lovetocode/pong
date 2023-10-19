extends CharacterBody2D

@export var initial_ball_speed = 20
# 102% faster every time
@export var ball_speed_multiplier = 1.02

var ball_speed = initial_ball_speed

func _ready():
	start_ball()
	
func start_ball():
	randomize()
	velocity.x = [-1, 1][randi() % 2] + initial_ball_speed
	velocity.y = [-.8, .8][randi() % 2] + initial_ball_speed
	
	
