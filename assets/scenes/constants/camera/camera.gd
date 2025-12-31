extends Camera2D

@onready var camera: Camera2D = $camera
@onready var canvas_layer: CanvasLayer = $CanvasLayer

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if global.puttingmode:
		set_zoom(Vector2(0.6, 0.6))
	else:
		set_zoom(Vector2(0.5, 0.5))
		return
