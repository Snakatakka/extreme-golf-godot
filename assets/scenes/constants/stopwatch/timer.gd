extends Node

var time = 0.0
var stopped = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if stopped:
		return
	time += delta

func _reset():
	time = 0.0

func _timestring():
	var mil = fmod(time, 1) * 1000
	var sec = fmod(time, 60)
	var mint = time / 60
	var string = "%02d : %02d : %02d"
	var timestring = string % [mint, sec, mil]
	return timestring
