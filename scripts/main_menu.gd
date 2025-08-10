extends Node2D

func _ready():
	pass

func _on_button_2_pressed() -> void:
	print("Button Solo")
	GameManager.numberPlayers = 1
	var game_solo = load("res://scenes/game.tscn").instantiate()
	game_solo.get_node("GameManager").set_numberPlayers(1)
	get_tree().current_scene.add_child(game_solo)


func _on_button_pressed() -> void:
	print("Button Multi")
	GameManager.numberPlayers = 2
	var game_multi = load("res://scenes/game.tscn").instantiate()
	game_multi.get_node("GameManager").set_numberPlayers(2)
	get_tree().current_scene.add_child(game_multi)
