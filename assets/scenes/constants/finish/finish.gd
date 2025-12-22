extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_finish_area_layer_2_body_entered(body: Node2D) -> void:
	print("level completed")
	if body.is_in_group("golfball"):
		global.puttingmode = false
		if global.mainlevel <= 6:
			global.mainlevel += 1
			# get_tree().change_scene_to_file("res://assets/scenes/levels/" +str(global.stage) + "/" +str(global.stage) +str(global.mainlevel) + ".tscn")
			print("res://assets/scenes/levels/" +str(global.stage) + "/" +str(global.stage) +str(global.mainlevel) + ".tscn")
		elif global.mainlevel == 6:
			get_tree().change_scene_to_file("res://assets/scenes/constants/score/score.tscn")
