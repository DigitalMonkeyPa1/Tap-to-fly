extends Sprite

const life_span = 2
const speed = -300
const shrink = Vector2(0.99, 0.99)
var age = 0

func _ready():
	set_process(true)
	pass

func _process(delta):
	move_local_x(speed*delta)
	age += delta
	scale(shrink)
	if age > life_span:
		queue_free()

