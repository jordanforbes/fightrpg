extends Button

const this_action:String = "Heavy"
const this_damage: int = 8
const this_length = 3
const this_steps = {"ready":1, "hit":2, "reset": 3}

@onready var heavy = Attack.new(this_action, this_damage, this_length, this_steps, Player)

signal heavypress

func _pressed()->void:
	heavy._pressed()
	emit_signal("heavypress")
