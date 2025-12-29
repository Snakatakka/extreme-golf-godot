extends Camera2D

@onready var camera: Camera2D = $camera

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN)
	if global.puttingmode:
		# tween.tween_property($camera, "zoom", )
		return
	else:
		return
