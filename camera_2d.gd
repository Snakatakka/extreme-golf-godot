extends Camera2D

# var zoomminumum = Vector2(.1, .1)
# var zoommaximum = Vector2(.5, .5)
# var zoomspeed = Vector2(.3, .3)

@onready var camera = Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.puttingmode == true:
		set_zoom(Vector2(0.6, 0.6))
		return
	else:
		set_zoom(Vector2(0.5, 0.5))
		return
