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

# Score Values

var shots = 0
var deaths = 0

# Score Bonuses

var timebonus = 100000
var shotbonus = 100000
var deathbonus = 100000

# Time Stuff

var time = 0.0
var stopped = false

func _process(delta: float) -> void:
	if stopped:
		return
	time += delta
	
	if deaths <= 9:
		deathbonus = 100000 - (deaths * 10)
	else:
		deathbonus = 0

func _reset():
	time = 0.0

func _timestring():
	var mil = fmod(time, 1) * 1000
	var sec = fmod(time, 60)
	var mint = time / 60
	var string = "%02d : %02d : %02d"
	var timestring = string % [mint, sec, mil]
	return timestring
