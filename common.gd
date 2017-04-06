extends Node

func _ready():
	Globals.set("PlaneColor", "Blue")
	Globals.set("Environment", "Dirt")
	Globals.set("Speed", 100)
	seed(OS.get_ticks_msec())
	return
