extends Button

const this_action:String = "Block"
const this_damage: int = 0
const this_length = 1 
const this_steps = {"ready":1, "hit":1, "reset": 1}

@onready var block = Attack.new(this_action, this_damage, this_length, this_steps, Player)

signal blockhit

func _pressed()->void:
	block._pressed()
	emit_signal("blockhit")
	
	
