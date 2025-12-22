extends TouchScreenButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("click") and global.puttingmode:
		position = get_global_mouse_position()
		global.cx = position.x
		global.cy = position.y

	if Input.is_action_just_released("click") and global.puttingmode:
		print("aimed at" + str(global.cx) + str(global.cy))
