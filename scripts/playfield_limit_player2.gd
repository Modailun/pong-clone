extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point_player2()
	body.get_node("CollisionShape2D").queue_free()
	get_tree().reload_current_scene()
