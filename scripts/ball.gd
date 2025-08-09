extends RigidBody2D

var initial_velocity = Vector2(-300, 100)
var speed = 300.0
var should_reset = false
var initial_position = Vector2(0, -8.0)

func _ready() -> void:
	_reset_ball()
	apply_central_impulse(initial_velocity.normalized() * speed)
	
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	state.linear_velocity = linear_velocity.normalized() * speed
	
	if should_reset:
		var next_transform = state.get_transform()
		next_transform.origin = initial_position
		state.set_transform(next_transform)
		should_reset = false

func _reset_ball():
	print('reset ball')
	print(speed)
	should_reset = true
