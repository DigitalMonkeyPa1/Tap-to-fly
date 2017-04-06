extends Node2D

const spawn_time = 0.3
var time = 0
var smokePrototype = null

func _ready():
	set_process(true)
	smokePrototype = load("res://game/plane/smoke.tscn")
	time = spawn_time
	pass

func _process(delta):
	time += delta
	if time > spawn_time:
		time = 0
		var smoke = smokePrototype.instance()
		var size = rand_range(0.5, 1.5)
		smoke.scale(Vector2(size, size))
		add_child(smoke)
	
