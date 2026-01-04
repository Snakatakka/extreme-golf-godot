extends Camera2D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var camera: Camera2D = $"."


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_golfball_puttingmodeentered() -> void:
	print("test")
	var puttingstart = get_tree().create_tween()
	puttingstart.tween_property($".", "zoom", Vector2(0.6, 0.6), 9.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)
	puttingstart.tween_callback($".".queue_free)

func _on_golfball_puttingmodeexited() -> void:
	print("test2")
	var puttingend = get_tree().create_tween()
	puttingend.tween_property($".", "zoom", Vector2(0.5, 0.5), 9.0).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CIRC)
	puttingend.tween_callback($".".queue_free)
