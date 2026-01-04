extends Node

# Level Select
var stage = 0
var mainlevel = 1

# Player Variables
var jumpsavailable = 2
var dashavailable = 1
var walljumpavailable = 1
var puttingmode = false

# Golfball Variables
var golfballposition = Vector2(0, 0)
var playerposition = Vector2(0, 0)

var bx = 0
var by = 0
var cx = 0
var cy = 0
var px = 0
var py = 0

# Time Stuff

var time = 0.0
var stopped = false

func _process(delta: float) -> void:
	if stopped:
		return
	time += delta

func _gamereset():
	# dear future me, please forgive me for my sins...
	stage = 0
	mainlevel = 1
	jumpsavailable = 2
	dashavailable = 1
	walljumpavailable = 1
	puttingmode = false
	golfballposition = Vector2(0, 0)
	playerposition = Vector2(0, 0)
	bx = 0
	by = 0
	cx = 0
	cy = 0
	px = 0
	py = 0

func _timerreset():
	time = 0.0

func _timestring():
	var mil = fmod(time, 1) * 1000
	var sec = fmod(time, 60)
	var mint = time / 60
	var string = "%02d : %02d : %02d"
	var timestring = string % [mint, sec, mil]
	return timestring
