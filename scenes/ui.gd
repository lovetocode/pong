extends CanvasLayer

@onready var player_points_label = $MarginContainer/PlayerPoints
@onready var enemy_points_label = $MarginContainer/EnemyPoints

# Called when the node enters the scene tree for the first time.
func _ready():
	player_points_label.text = "%d" % 0
	enemy_points_label.text = "%d" %0
	
