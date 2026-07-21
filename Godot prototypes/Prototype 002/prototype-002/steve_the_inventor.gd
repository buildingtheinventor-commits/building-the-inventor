extends CharacterBody2D

var speed = 100

var player_state 

func _physics_process(delta):
	
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	
	if direction.x == 0 and direction.y == 0:
		player_state = "idle"
	elif direction.x != 0 or direction.y != 0:
		player_state = "walking"
		
	velocity = direction * speed
	move_and_slide()

	play_anim(direction)

func play_anim(direction):
	if player_state == "walking":
		if direction.y == -1:
			$AnimatedSprite2D.play("Upwards")
		if direction.x == 1:
			$AnimatedSprite2D.play("Right")
		if direction.y == 1:
			$AnimatedSprite2D.play("Idle")
		if direction.x == -1:
			$AnimatedSprite2D.play("Left")

func player():
	pass
