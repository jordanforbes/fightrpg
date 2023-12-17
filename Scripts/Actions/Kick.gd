extends Button

const this_action:String = "Kick"
const this_damage: int = 4
const this_length = 2
const this_steps = {0:["prep"], 1:["hit","reset"]}

@onready var kick = Attack.new(this_action, this_damage, this_length, this_steps, Enemy)

signal kickpress 

func _pressed()->void:
	kick._pressed()
	emit_signal("kickpress")
	
