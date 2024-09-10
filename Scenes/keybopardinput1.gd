extends AnimatedSprite2D  # Ensure this matches your node

# Input handling function to detect WASD key presses and play animations
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):  # W key mapped to "move_up"
		play("Up")
	elif Input.is_action_pressed("move_right"):  # D key mapped to "move_right"
		play("Right")
	elif Input.is_action_pressed("move_left"):  # A key mapped to "move_left"
		play("Left")
	elif Input.is_action_pressed("move_down"):  # S key mapped to "move_down"
		play("Down")
	else:
		stop()  # Stop animation when no keys are pressed
