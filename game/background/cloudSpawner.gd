extends Node2D

const spawn_time = 2.5
var time = 0
var cloudPrototype = null

func _ready():
	set_process(true)
	cloudPrototype = load("res://game/background/cloud.tscn")
	time = spawn_time - 0.1
	pass

func _process(delta):
	time += delta
	if time > spawn_time:
		time = 0
		var cloud = cloudPrototype.instance()
		cloud.set_pos(Vector2(rand_range(1000, 1200), rand_range(0, 400)))
		var size = rand_range(0.25, 1)
		cloud.scale(Vector2(size, size))
		add_child(cloud)
	return