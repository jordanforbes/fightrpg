extends Button

const action:String = "Heavy"
const damage: int = 8
const length = 3
const steps = {"ready":1, "hit":2, "reset": 3}

func _pressed()->void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	
