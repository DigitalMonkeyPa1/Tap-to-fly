extends AnimatedSprite

const gravity = -130
const lift = 130
const sky_level = 50

var  ground_level = 0
var x_pos = get_pos().x
var altitude = get_pos().y
var flying = false
var score = 0
var scoreLabel = null


func _ready():
	set_process(true)
	set_animation(Globals.get("PlaneColor")+"PlaneFly")
	add_to_group("Plane")
	scoreLabel = get_parent().get_node("UINode/ScoreLabel")
	scoreLabel.set_text("Score : " + str(score))
	ground_level = get_viewport_rect().size.y
	get_parent().get_node("StreamPlayer").play()
	return


func _process(delta):
	if Input.is_action_pressed("ui_select") or Input.is_mouse_button_pressed(BUTTON_LEFT):
		 flying = true
	else : 
		flying = false
	
	if flying:
		altitude -= lift*delta
		rotate(deg2rad(3))
		if get_rotd() >= 20: set_rotd(20)
	else :
		altitude -= gravity*delta
		rotate(deg2rad(-1))
		if get_rotd() <= -20: set_rotd(-20)
	
	set_pos(Vector2(x_pos, altitude))
	altitude = get_pos().y
	if altitude > ground_level: set_pos(Vector2(x_pos, ground_level - 5))
	if altitude < sky_level: set_pos(Vector2(x_pos, sky_level + lift*delta))
	return


func _on_ScoreArea_area_enter( area ):
	if area.is_in_group("Rocks"):
		score += 1
		scoreLabel.set_text("Score : " + str(score))
	return


func _on_Area2D_area_enter( area ):
	if area.is_in_group("Rocks") or area.is_in_group("Roof") or area.is_in_group("Ground"):
		get_parent().get_node("StreamPlayer").stop()
		get_tree().change_scene("res://game/replay.tscn")
	pass # replace with function body
