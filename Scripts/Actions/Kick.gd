extends Button

const this_action:String = "Kick"
const this_damage: int = 4
const this_length = 2
const this_steps = {"ready":1, "hit":2, "reset": 2}

@onready var kick = Attack.new(this_action, this_damage, this_length, this_steps, Player)

signal kickpress 

func _pressed()->void:
	kick._pressed()
	emit_signal("kickpress")
	
