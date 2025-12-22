extends "res://assets/scenes/constants/player/player.gd"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if global.puttingmode and Input.is_action_just_pressed("click"):
		print("holding click while putting")
		
	elif global.puttingmode and Input.is_action_just_released("click"):
		print("released click while putting")
	elif not global.puttingmode and Input.is_action_just_pressed("click") or Input.is_action_just_released("click"):
		print("putt unsuccesfull")
