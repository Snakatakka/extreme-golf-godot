extends Area2D

var mainlevel = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_finish_area_layer_2_body_entered(body: Node2D) -> void:
	if body.get("TYPE") == "golfball":
		if mainlevel <= 6:
			mainlevel + 1
			get_tree().change_scene_to_file("res://assets/scenes/levels/1/" + str(mainlevel) + ".tscn")
		elif mainlevel == 6:
			get_tree().change_scene_to_file("res://assets/scenes/constants/score/score.tscn")
