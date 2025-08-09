extends Node

var scorePlayer1 : int = 0
var scorePlayer2 : int = 0

@onready var score_label_player_1: Label = %ScoreLabelPlayer1
@onready var score_label_player_2: Label = %ScoreLabelPlayer2
@onready var timer: Timer = %Timer
@onready var ball: RigidBody2D = %Ball

func add_point_player1():
	print("+1 Player2")
	scorePlayer2 += 1
	score_label_player_2.text = str(scorePlayer2)
	ball._reset_ball()
	#timer.start()
	
func add_point_player2():
	print("+1 Player1")
	scorePlayer1 += 1
	score_label_player_1.text = str(scorePlayer1)
	ball._reset_ball()
	#timer.start()

#func _on_timer_timeout() -> void:
	#ball._reset_ball()
