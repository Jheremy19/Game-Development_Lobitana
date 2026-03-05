extends Control

@onready var score_label = $ScoreLabel
@onready var health_bar = $HealthBar

func update_score(new_score: int):
	score_label.text = "Score: " + str(new_score)

func update_health(current: float, maximum: float):
	health_bar.max_value = maximum
	health_bar.value = current
