extends CharacterBody2D


const SPEED = 140
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	# Updated initial movement for x axis only
	var directionx := Input.get_axis("move_left", "move_right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Dupliaccted and changed to y axis

	var directiony := Input.get_axis("move_up", "move_down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y
		, 0, SPEED)

	#NEEDED for movememt - last time deleted and game broke, had to relaunch project
	move_and_slide()
