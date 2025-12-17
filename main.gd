extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if global.puttingmode:
		Engine.time_scale = 0.25
	else:
		Engine.time_scale = 1
