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
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = min(motion.y + ACCELERATION, MAX_SPEED)
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	
	if friction == true:
		motion.x = lerp(motion.x, 0, 0.05)
	motion = move_and_slide(motion, UP)

func _on_Player_body_entered(body):
	if Input.is_action_pressed("ui_right"):
		move_local_x( -9)
	if Input.is_action_pressed("ui_left"):
		move_local_x( 9)
	if Input.is_action_pressed("ui_down"):
		move_local_y( -9)
	if Input.is_action_pressed("ui_up"):
		move_local_y( 9)
	print("Works");