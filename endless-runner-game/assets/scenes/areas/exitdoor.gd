extends Area2D

func _ready():
	self.body_entered.connect(_on_level_exit_body_entered)

func _on_level_exit_body_entered(body):
	if body.name == "player":
		global.go_to_next_level()
