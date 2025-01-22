extends StaticBody2D

@export var speed = 10
func _physics_process(delta):
	var y_axis = Input.get_axis("paddle_left_up","paddle_left_down")
	var pos = position.y + y_axis * speed
	if not(pos < 83 or pos > get_viewport().size.y - 83):
		position.y = pos
	#move_and_collide(Vector2(0, y_axis * speed))
