extends KinematicBody2D

var velocity = Vector2.ZERO
const SPEED = 4
const MAX_SPEED = 100

func _physics_process(_delta):
	
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	#	if Input.is_action_pressed("ui_right"):

	# print(_delta)
	move_and_collide(_delta * velocity.normalized() * MAX_SPEED)
