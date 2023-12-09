extends Button

const action:String = "Straight"
const damage: int = 3
const length = 2
const steps = {"ready":1, "hit":1, "reset": 2}

func _pressed()->void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	
