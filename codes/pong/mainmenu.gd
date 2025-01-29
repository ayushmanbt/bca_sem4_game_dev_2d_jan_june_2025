extends Control


var game = preload("res://world.tscn")

func _on_play_button_pressed() -> void:
	var loadedGame = game.instantiate()
	get_tree().root.add_child(loadedGame)
	get_tree().root.get_child(0).queue_free()
