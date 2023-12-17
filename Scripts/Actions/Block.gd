extends Button

const this_action:String = "Block"
const this_damage: int = 0
const this_length = 1 
const this_steps = {0:["prep","hit","reset"]}

@onready var block = Attack.new(this_action, this_damage, this_length, this_steps, Enemy)

signal blockhit

func _pressed()->void:
	block._pressed()
	emit_signal("blockhit")
	
	
