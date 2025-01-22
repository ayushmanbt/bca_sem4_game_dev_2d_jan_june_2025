extends CharacterBody2D


const SPEED = 300

func _physics_process(delta):
	var x_axis = Input.get_axis("ui_left", "ui_right")
	var y_axis = Input.get_axis("ui_up", "ui_down")
	
	var dir = Vector2(x_axis, y_axis).normalized()
	
	velocity = dir * SPEED
	
	move_and_slide()
	
