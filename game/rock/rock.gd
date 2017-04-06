extends Node2D


func _ready():
	set_process(true)
	get_node("Sprite").set_texture(load("res://game/rock/rock"+Globals.get("Environment")+".png"))
	pass
 
func _process(delta):
	if get_rotd() < 180: move_local_x(-Globals.get("Speed")*delta)
	else : move_local_x(Globals.get("Speed")*delta)
	if get_pos().y < -100:
		queue_free()



