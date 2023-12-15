extends Button

const this_action: String = "Jab"
const this_damage: int = 1
const this_length = 1
const this_steps = {"ready": 1, "hit": 1, "reset": 1}

@onready var jab = Attack.new(this_action, this_damage, this_length, this_steps, Player)
signal update_HP

signal jabpress

func _pressed() -> void:
	jab._pressed()
	emit_signal("jabpress","pressed", Player.current_HP)

