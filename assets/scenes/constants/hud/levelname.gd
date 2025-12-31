extends Label

var level = global.mainlevel

var stagearray = ["Tutorial", 1]
var tutorialarray = ["Placeholder", "Placeholder2", "Placeholder", "Placeholder", "Placeholder", "Placeholder"]
var level1array = ["It's a Start", "You Can Walljump BTW", "Mind The Spikes", "Easier Than it Looks","The Inbetweeners", "The Last One"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if level < 6:
		if global.stage > 0:
			text = "level"+str(global.stage)+"array"[level - 1]
		else:
			text = tutorialarray[level - 1]
