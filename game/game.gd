extends Node


func _ready():
	get_node("UINode/ResumeButton").hide()
	Globals.set("Speed", 100)
	return


func _on_PauseButton_pressed():
	get_node("UINode/PauseButton").hide()
	get_node("UINode/ResumeButton").show()
	get_node("StreamPlayer").set_paused(true)
	get_node("Plane/Exhaust").set_process(false)
	for c in get_node("RockSpawner").get_children():
		c.set_process(false)
	for c in get_node("CloudSpawner").get_children():
		c.set_process(false)
	for c in get_children():
		c.set_process(false)
	return


func _on_ResumeButton_pressed():
	get_node("UINode/ResumeButton").hide()
	get_node("UINode/PauseButton").show()
	get_node("StreamPlayer").set_paused(false)
	get_node("Plane/Exhaust").set_process(true)
	for c in get_node("CloudSpawner").get_children():
		c.set_process(true)
	for c in get_node("RockSpawner").get_children():
		c.set_process(true)
	for c in get_children():
		c.set_process(true)
	return