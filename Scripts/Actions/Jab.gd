extends Button

const action:String = "Jab"
const damage: int = 1
const length = 1 
const steps = {"ready":1, "hit":1, "reset": 1}

func _pressed()->void:
	print(action,": ", damage, " damage, length: ",length)
	print("Steps: ", steps)
	
