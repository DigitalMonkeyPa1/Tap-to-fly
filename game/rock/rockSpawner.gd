extends Node2D

var spawn_time = 1
var time = 0
var rockPrototype = null
var up = 0
var down = 0


func _ready():
	set_process(true)
	rockPrototype = load("res://game/rock/rock.tscn")
	time = spawn_time/2
	down = get_viewport_rect().size.y
	return


func _process(delta):
	time += delta
	
	if time > spawn_time:
		time = 0
		var new_speed = Globals.get("Speed") + 3
		Globals.set("Speed", new_speed)
		spawn_time -= 0.01
		
		var rock = rockPrototype.instance()
		rock.scale(Vector2(rand_range(0.5, 1.5),rand_range(0.75, 1.50)))
		
		if (rand_range(-10, 10) > 0):
			var size = rock.get_node("Sprite").get_scale().y
			rock.set_pos(Vector2(rand_range(1000, 1300), up))
			rock.set_rotd(180)
			
		else :
			rock.set_pos(Vector2(rand_range(1000, 1300), down))

		rock.get_node("Area2D").add_to_group("Rocks")
		add_child(rock)
		
	return
