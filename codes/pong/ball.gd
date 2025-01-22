extends RigidBody2D


@onready var ball_pos = position
const ball = preload("res://ball.tscn")

func handle_ball_exit():
	var new_ball = ball.instantiate()
	get_tree().root.add_child(new_ball)
	new_ball.position = ball_pos
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("trigger"):
		handle_ball_exit()
