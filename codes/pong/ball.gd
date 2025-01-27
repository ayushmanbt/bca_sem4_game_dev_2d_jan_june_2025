extends RigidBody2D

var ball_pos = Vector2(500,280)
const ball = preload("res://ball.tscn")

func handle_ball_exit(i):
	var new_ball = ball.instantiate()
	if(i == -1):
		new_ball.linear_velocity = Vector2(-500,-350)
	get_tree().root.get_child(0).add_child(new_ball)
	new_ball.position = ball_pos
	
	queue_free()

func _process(_delta):
	if(global_position.x < -20):
		handle_ball_exit(-1)
	if(global_position.x > 980):
		handle_ball_exit(1)
