extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("res://assets/scenes/levels/" +str(global.stage) + "/" +str(global.stage) +str(global.mainlevel) + ".tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_level_select_pressed() -> void:
	print("level")
	get_tree().change_scene_to_file("res://assets/scenes/ui/levelselect.tscn")

func _on_options_pressed() -> void:
	print("options")

func _on_exit_pressed() -> void:
	print("exit")
	get_tree().quit()
