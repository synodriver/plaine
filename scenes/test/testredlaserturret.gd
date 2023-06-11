extends Node2D

func _input(event):
	if event is InputEventMouseButton:
			if event.button_index == MouseButton.MOUSE_BUTTON_LEFT:
				if event.is_pressed():
					self.get_node("RedLaserTurret").fire()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	self.get_node("RedLaserTurret").set_target(self.get_global_mouse_position())

