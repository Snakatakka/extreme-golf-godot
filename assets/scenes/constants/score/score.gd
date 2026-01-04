extends Node

# Score Bonuses

var timebonus = 100000 
var shotbonus = 100000 - (shots * 1000)
var deathbonus = 100000
var finalscore = timebonus + deathbonus + shotbonus
var shots = 0
var deaths = 0

var loops = 0

var rankingarray = ["F", "D", "C", "B", "A", "S"]
var ranking 
var baserank = 50000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _score():
	var finalscore = timebonus + deathbonus + shotbonus
	finalscore = ceil(finalscore)
	
	if finalscore <= 50000:
		ranking = rankingarray[0]
	elif 50000 < finalscore <= 100000:
		ranking = rankingarray[1]
	elif 100000 < finalscore <= 150000:
		ranking = rankingarray[2]
	elif 150000 < finalscore <= 200000:
		ranking = rankingarray[3]
	elif 200000 < finalscore <= 250000:
		ranking = rankingarray[4]
	else:
		ranking = rankingarray[5]
