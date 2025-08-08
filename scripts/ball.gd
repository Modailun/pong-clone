extends Node2D

const SPEED : float = 150.0

var direction : int = randi_range(0, 360)
var raddir : float = deg_to_rad(direction)
var x : float = cos(raddir)
var y : float = sin(raddir)

@onready var ray_cast_down: RayCast2D = $RayCastDown
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_up: RayCast2D = $RayCastUp

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# print("x = ", x)
	# print("y = ", y)
	
	if ray_cast_down.is_colliding() or ray_cast_up.is_colliding():
		y = -y
	if ray_cast_left.is_colliding() or ray_cast_right.is_colliding():
		x = -x
	
	# Apply movementz
	position.x += x * SPEED * delta
	position.y += y * SPEED * delta
