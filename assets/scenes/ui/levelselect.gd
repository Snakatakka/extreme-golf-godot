extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_worldone_pressed() -> void:
	global.stage = 1
	print("stage selected" + "" + str(global.stage))
	get_tree().change_scene_to_file("res://assets/scenes/levels/1/11.tscn")
