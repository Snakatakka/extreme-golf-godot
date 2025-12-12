extends CharacterBody2D


const SPEED = 1200.0
const JUMP_VELOCITY = -700.0
var was_on_floor = is_on_floor
var puttable = false
@onready var coyote: Timer = $Coyote
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() || !coyote.is_stopped()):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
		# Coyote Time
	if was_on_floor && is_on_floor():
		coyote.start()
	
	move_and_slide()

@warning_ignore("unused_parameter")
func _on_golfball_detection_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	puttable = true

@warning_ignore("unused_parameter")
func _on_golfball_detection_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	puttable = false
