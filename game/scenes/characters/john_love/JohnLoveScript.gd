extends Node2D



const GRAVITY = 0.1
const SPEED = 5

var velocity = Vector2(0,0)



func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	
	# Gravity loop
	velocity.y += GRAVITY
	
	self.position += velocity
