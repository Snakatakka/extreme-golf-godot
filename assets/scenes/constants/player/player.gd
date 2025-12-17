extends CharacterBody2D

var SPEED = 1200.0
var JUMP_VELOCITY = -700.0
var was_on_floor = is_on_floor
var puttable = false
@onready var coyote: Timer = $Coyote
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _physics_process(delta: float) -> void:
	
	# Handle Jump Pt.1
	if is_on_floor() and global.jumpsavailable == 0:
		global.jumpsavailable += 2
	elif is_on_floor() and global.jumpsavailable == 1:
		global.jumpsavailable + 1
	elif is_on_wall_only() and global.jumpsavailable <= 1:
		global.jumpsavailable += 1

	# Handle Dash
	if Input.is_action_just_pressed("dash") and global.dashavailable > 0:
		global.dashavailable -= 1
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and global.jumpsavailable > 0:
		global.jumpsavailable -= 1
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Coyote Time
	if was_on_floor && is_on_floor():
		coyote.start()
	
	move_and_slide()

func _putting_process(delta: float) -> void:
	pass
