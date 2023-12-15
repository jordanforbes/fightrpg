extends Button

class_name Attack

var damage: int
var length: int
var steps: Dictionary
var action: String
var player: Player


func _ready()-> void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	

func _pressed()->void:
	print(action)
	player.take_damage(damage)
	#print(player.current_HP)
	
	
func _init(action_name: String, atk_damage:int, atk_length:int, atk_steps:Dictionary, target:Player):
	action = action_name 
	damage = atk_damage
	length = atk_length 
	steps = atk_steps
	player = target 
