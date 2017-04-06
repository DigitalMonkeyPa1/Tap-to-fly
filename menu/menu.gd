extends Node

func _ready():
	pass


func _on_PlayButton_pressed():
	get_tree().change_scene("res://menu/choose.tscn")
	return


func _on_QuitButton_pressed():
	get_tree().quit()
	return


