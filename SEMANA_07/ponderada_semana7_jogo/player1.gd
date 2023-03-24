extends KinematicBody2D
var motion = Vector2.ZERO
var speed = 300

func _ready():
	pass 
	
func _process(delta):
	# animação
	if is_on_floor():
		if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("run")
		else:
			$AnimatedSprite.play("idle")
		if Input.is_action_pressed("ui_up"):
			motion.y = -400
	

	else:
		motion.y += 10
		
		#movimento
	move_and_slide(motion, Vector2.UP)
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0




