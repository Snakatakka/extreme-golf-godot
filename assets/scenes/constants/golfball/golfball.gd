extends RigidBody2D

var target = position

@onready var golfball: RigidBody2D = $"golfball"
@onready var audioplayer: AudioStreamPlayer2D = $audioplayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global.bx = position.x
	global.by = position.y
	
	if Input.is_action_just_released("click") and global.puttingmode:
		global.shots += 1
		apply_central_impulse(Vector2(global.cx, global.cy))
		audioplayer.play()
		global.puttingmode = false

func _physics_process(delta: float) -> void:
	pass

func _on_golfball_detection_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		global.puttingmode = true
		print("player detected")

func _on_golfball_detection_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		global.puttingmode = false
		print("player vanished")
