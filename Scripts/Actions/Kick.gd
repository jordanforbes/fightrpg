extends Button

const action:String = "Kick"
const damage: int = 4
const length = 2
const steps = {"ready":1, "hit":2, "reset": 2}

func _pressed()->void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	
