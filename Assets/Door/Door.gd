extends Area2D


func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == 'Player':
			if Input.is_key_pressed(KEY_E):
				get_tree().change_scene("World2.tscn")
				print('changing scene')
#				body.position = Vector2(96, 250)
			break
