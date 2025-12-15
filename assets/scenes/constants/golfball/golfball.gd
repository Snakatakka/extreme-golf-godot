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


func _on_finish_area_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
