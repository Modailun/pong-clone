extends CharacterBody2D

const SPEED : float = 300.0

func _process(delta: float) -> void:
	# Get the input direction: -1, 0, 1
	var direction := Input.get_axis("move_up_player2", "move_down_player2")
	
	# Apply movement
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
