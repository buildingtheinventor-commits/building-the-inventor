### Global.gd

extends Node

#inventory items
var inventory = []

#custom signals
signal inventory_updated

var player_node: Node = null

func _ready():
	#initialise the inventory with 30 slots (spread over 9 blockas per row)
	inventory.resize(30)

func add_item():
	inventory_updated.emit()
	
func remove_item():
	inventory_updated.emit()

func increace_inventory_size():
	inventory_updated.emit()

func set_player_reference(player):
	player_node = player
