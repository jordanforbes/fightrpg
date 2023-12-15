extends Button

const this_action:String = "Straight"
const this_damage: int = 3
const this_length = 2
const this_steps = {"ready":1, "hit":1, "reset": 2}

@onready var straight = Attack.new(this_action, this_damage, this_length, this_steps, Player)

func _pressed()->void:
	straight._pressed()
	
