extends Node2D


func _ready():
	pass


func _on_PlayButton_pressed():
	get_tree().change_scene("res://menu/choose.tscn")
	return


func _on_BackButton_pressed():
	get_tree().change_scene("res://menu/menu.tscn")
	return



