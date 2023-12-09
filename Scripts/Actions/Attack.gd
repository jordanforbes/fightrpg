extends Button

class_name Attack 

var damage: int
var length: int
var steps: Dictionary
var action: String


func _ready()-> void:
	pass


func _pressed()->void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	
	
func _init(action_name: String, atk_damage:int, atk_length:int, atk_steps:Dictionary):
	action = action_name 
	damage = atk_damage
	length = atk_length 
	steps = atk_steps
	print(damage)
	self._ready()
	self._pressed()
