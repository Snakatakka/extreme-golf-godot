extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_golfball_detection_body_entered(body: Node2D) -> void:
	if body.get("TYPE") == "player":
		global.puttable = true
		global.timescale == 0.25
	else:
		pass

func _on_golfball_detection_body_exited(body: Node2D) -> void:
	if body.get("TYPE") == "player":
		global.puttable = false
		global.timescale == 1
	else:
		pass


func _on_finish_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("golfball"):
		Engine.time_scale = 1
		if global.mainlevel <= 6:
			global.mainlevel += 1
			get_tree().change_scene_to_file("res://assets/scenes/levels/" +str(global.stage) + "/" +str(global.stage) +str(global.mainlevel) + ".tscn")
		elif global.mainlevel == 6:
			get_tree().change_scene_to_file("res://assets/scenes/constants/score/score.tscn")
