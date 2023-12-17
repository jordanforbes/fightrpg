extends Button

const this_action: String = "Jab"
const this_damage: int = 1
const this_length = 1
const this_steps = {0:["prep", "hit", "reset"]}

@onready var jab = Attack.new(this_action, this_damage, this_length, this_steps, Enemy)

signal jabpress

func _pressed() -> void:
	jab._pressed()
	emit_signal("jabpress")

