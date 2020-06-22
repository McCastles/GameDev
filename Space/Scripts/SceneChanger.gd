extends Node

export(String, FILE, "*.tscn") var left_room
export(String, FILE, "*.tscn") var right_room
	
func _input(event):
	
	if Input.is_action_pressed("ui_right"):
		if right_room != null:
			get_tree().change_scene(right_room)
		print('Right')
	elif Input.is_action_pressed("ui_left"):
		if left_room != null:
			get_tree().change_scene(left_room)
		print('Left')
