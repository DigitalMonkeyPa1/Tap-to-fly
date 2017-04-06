extends Node2D

const speed = -50

func _ready():
	set_process(true)
	pass

func _process(delta):
	move_local_x(speed*delta)
	if get_pos().y < -100:
		queue_free()
