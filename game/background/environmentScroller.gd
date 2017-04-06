extends Node2D

const far = Vector2(1614, 0)

onready var roof = get_node("RoofScroller")
onready var ground = get_node("GroundScroller")


func _ready():
	set_process(true)
	for c in roof.get_children():
		c.get_node("Area2D").add_to_group("Roof")
		c.get_node("Sprite").set_texture(load("res://game/background/ground"+Globals.get("Environment")+".png"))
	for c in ground.get_children():
		c.get_node("Area2D").add_to_group("Ground")
		c.get_node("Sprite").set_texture(load("res://game/background/ground"+Globals.get("Environment")+".png"))

func _process(delta):
	for c in roof.get_children():
		c.move_local_x(Globals.get("Speed")*delta)
		if c.get_pos().x < -404:
			c.set_pos(far)
	for c in ground.get_children():
		c.move_local_x(-Globals.get("Speed")*delta)
		if c.get_pos().x < -404:
			c.set_pos(far)

