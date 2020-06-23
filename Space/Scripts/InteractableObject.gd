extends Area2D

func _on_InteractableObject_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print("Pressed!")
		else:
			print("Released!")
