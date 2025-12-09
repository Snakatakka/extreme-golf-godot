extends Area2D

var is_on_floor = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass

# Golfball is sunk into hole
func _on_finish_area_entered(area: Area2D) -> void:
	pass
