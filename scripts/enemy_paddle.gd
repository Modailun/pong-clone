extends CharacterBody2D

const SPEED : float = 400.0

@onready var ball: RigidBody2D = %Ball

func _process(delta: float) -> void:
	
	if GameManager.numberPlayers == 1:
		print("Balle = ", ball.position.y)
		print("Paddle = ", position.y)
		position.y = ball.position.y

	if GameManager.numberPlayers == 2:
		# Get the input direction: -1, 0, 1
		var direction := Input.get_axis("move_up_player2", "move_down_player2")
		
		# Apply movement
		if direction:
			velocity.y = direction * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()
