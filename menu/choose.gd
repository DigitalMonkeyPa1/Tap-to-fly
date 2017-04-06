extends Node

onready var planeSelector = get_node("Panel/PlaneSelector")
onready var environmentSelector = get_node("Panel/EnvironmentSelector")

func _ready():
	set_process(true)


func _on_PlaneBlue_pressed():
	planeSelector.set_pos(get_node("Panel/PlaneBlue").get_pos())
	Globals.set("PlaneColor","Blue")
	return


func _on_PlaneGreen_pressed():
	planeSelector.set_pos(get_node("Panel/PlaneGreen").get_pos())
	Globals.set("PlaneColor","Green")
	return


func _on_PlaneRed_pressed():
	planeSelector.set_pos(get_node("Panel/PlaneRed").get_pos())
	Globals.set("PlaneColor","Red")
	return


func _on_PlaneYellow_pressed():
	planeSelector.set_pos(get_node("Panel/PlaneYellow").get_pos())
	Globals.set("PlaneColor","Yellow")
	return


func _on_GroundDirt_pressed():
	environmentSelector.set_pos(get_node("Panel/GroundDirt").get_pos())
	Globals.set("Environment", "Dirt")
	return


func _on_GroundGrass_pressed():
	environmentSelector.set_pos(get_node("Panel/GroundGrass").get_pos())
	Globals.set("Environment", "Grass")
	return


func _on_GroundStone_pressed():
	environmentSelector.set_pos(get_node("Panel/GroundStone").get_pos())
	Globals.set("Environment", "Stone")
	return


func _on_PlayButton_pressed():
	get_tree().change_scene("res://game/game.tscn")
	return


func _on_BackButton_pressed():
	get_tree().change_scene("res://menu/menu.tscn")
	return

