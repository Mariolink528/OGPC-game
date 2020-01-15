extends KinematicBody2D
var screen_size
const MAX_SPEED = 200
const ACCELERATION = 50
var motion = Vector2()
const UP = Vector2(0, -1)

func _ready():
	screen_size = get_viewport_rect().size
	pass


func _physics_process(delta):
	
	var friction = false
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		
		
	else: 
		 motion.x = 0
		 friction = true
	if Input.is_action_pressed("ui_down"):
		motion.y = min(motion.y + ACCELERATION, MAX_SPEED)
			 
	elif Input.is_action_pressed("ui_up"):
		motion.y = max(motion.y - ACCELERATION, -MAX_SPEED)
	else:
		motion.y = 0 
		friction = true
	
	if friction == true:
		motion.x = lerp(motion.x, 0, 0.05)
		motion.y = lerp(motion.y, 0, 0.05)
	motion = move_and_slide(motion, UP)
