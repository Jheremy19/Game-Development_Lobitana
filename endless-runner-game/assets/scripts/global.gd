extends Node

var current_level_index: int = 1
const LEVELS: Array = [
	"res://assets/scenes/areas/area1.tscn",
    "res://scenes/scenes/areas/area2.tscn"
]
var starting_area = 1
var area_container : Node2D

func go_to_next_level():
	if current_level_index < LEVELS.size():
		var next_level_path = LEVELS[current_level_index]
		get_tree().change_scene_to_file(next_level_path)
		current_level_index += 1
	else:
		print("Game Finished!")
		# Handle game completion (e.g., show end screen)
