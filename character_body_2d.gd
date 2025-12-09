extends CharacterBody2D


const SPEED = 1000.0
const JUMP_VELOCITY = -800.0
var was_on_floor = is_on_floor
var near_golfball = false
var can_double_jump = false
var jumps_available = 2

@onready var coyote: Timer = $Coyote
@onready var landing_lag: Timer = $LandingLag


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if  is_on_floor():
		jumps_available = 2
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() || !coyote.is_stopped()):
		jumps_available -= 1
		can_double_jump = true
	
	if Input.is_action_just_pressed("jump") and jumps_available >= 0:
		velocity.y = JUMP_VELOCITY
	
	
	# Coyote Time
	if was_on_floor && is_on_floor():
		coyote.start()
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

# Bullet time
	if near_golfball:
		if Engine.time_scale <= 0.1:
			Engine.time_scale = 1.0
		else:
			Engine.time_scale = 0.1

func _on_golfball_area_entered(area: Area2D) -> void:
	near_golfball = true
