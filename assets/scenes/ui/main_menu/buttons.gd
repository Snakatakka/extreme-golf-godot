extends Control

@onready var animation_player: AnimationPlayer = $_anim_player



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_level_select_pressed() -> void:
	print("level")
	get_tree().change_scene_to_file("res://assets/scenes/ui/level_select.tscn")

func _on_options_pressed() -> void:
	print("options")

func _on_exit_pressed() -> void:
	print("exit")
	get_tree().quit()
