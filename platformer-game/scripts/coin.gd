extends Area2D

@onready var game_manager: Node = %"Game Manager"
@onready var coin_sfx: AudioStreamPlayer2D = $"Coin SFX"

func _on_body_entered(_body: Node2D) -> void:
	game_manager.add_point()
	coin_sfx.play()
	hide()
	set_deferred("monitoring", false)
	await coin_sfx.finished
	queue_free()
