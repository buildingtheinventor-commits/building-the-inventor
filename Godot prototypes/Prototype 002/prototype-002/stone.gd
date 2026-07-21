extends Node2D

var stone_state = 'on ground' #on ground/in inventory

var player_in_pickup_area = false

 

	
func _process(delta):
	if player_in_pickup_area:
		print('player_in_pickup_area')
		if Input.is_action_just_pressed("e"):
			stone_state = 'in inventory'
			queue_free()
		

func _on_pickable_area_body_entered(body):
	if body.has_method("player"):
		player_in_pickup_area = true


func _on_pickable_area_body_exited(body):
	if body.has_method("player"):
		player_in_pickup_area = false
