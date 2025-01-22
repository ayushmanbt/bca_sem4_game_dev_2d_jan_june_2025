extends Area2D


func _on_area_entered(area):
	print_debug(area)

func _on_body_entered(body):
	get_tree().change_scene_to_file("res://world_2.tscn")
