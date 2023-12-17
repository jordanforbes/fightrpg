extends Button

const this_action:String = "Straight"
const this_damage: int = 3
const this_length = 2
const this_steps = {0:["prep","hit"], 1:["reset"]}

@onready var straight = Attack.new(this_action, this_damage, this_length, this_steps, Enemy)

signal straightpress

func _pressed()->void:
	straight._pressed()
	emit_signal("straightpress")
	
