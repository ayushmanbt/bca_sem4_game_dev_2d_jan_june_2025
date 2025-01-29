extends Node2D

@onready var leftScoreContainer = $Control/LeftScore
@onready var rightScoreContainer = $Control/RightScore
@onready var pausePanel = $Control/PausePanel

var leftScore = -1
var rightScore = 0

func _handle_pause():
	for child in get_children():
			
			child.get_tree().paused = !child.get_tree().paused
			if child.get_tree().paused:
				pausePanel.visible = true
			else:
				pausePanel.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		_handle_pause()
				
	if event.is_action_pressed("Restart"):
		get_tree().reload_current_scene()
				

func _on_child_entered_tree(node: Node) -> void:
	if(node.is_in_group("ball")):
		# print_debug(node.linear_velocity.x)
		if(node.linear_velocity.x > 0):
			leftScore += 1
		else:
			rightScore += 1
		if(leftScoreContainer && rightScoreContainer):
			leftScoreContainer.clear()
			rightScoreContainer.clear()
			leftScoreContainer.add_text(str(leftScore))
			rightScoreContainer.add_text(str(rightScore))
		


func _on_pause_pressed() -> void:
	_handle_pause()
