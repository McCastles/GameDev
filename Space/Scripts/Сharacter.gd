extends KinematicBody2D

var anim_direction = "S"

var move_direction = Vector2.ZERO
const SPEED = 400

func _physics_process(_delta):
	
	move_direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	move_direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	#	if Input.is_action_pressed("ui_right"):

	# print(_delta)
	move_and_collide(_delta * move_direction.normalized() * SPEED)
	set_animation()

func set_animation():
	var anim_mode = "Idle"
	match move_direction:
		Vector2(-1,0):
			anim_direction = "W"
		Vector2(1,0):
			anim_direction = "E"
		Vector2(0,1):
			anim_direction = "S"
		Vector2(0,-1):
			anim_direction = "N"
		Vector2(-1,-0.5):
			anim_direction = "NW"
		Vector2(-1,0.5):
			anim_direction = "SW"
		Vector2(1,0.5):
			anim_direction = "NE"
		Vector2(1,-0.5):
			anim_direction = "SE"
	if move_direction != Vector2.ZERO:
		anim_mode = "Run"
	else:
		anim_mode = "Idle"
	
	get_node("AnimatedSprite").animation = anim_mode + "_" + anim_direction
