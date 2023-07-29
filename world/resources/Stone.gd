extends StaticBody2D


# https://padamthapa.com/blog/how-to-detect-click-inside-staticbody2d-in-godot/
func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Eventbus.stone_destroyed.emit()
			queue_free()
