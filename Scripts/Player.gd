extends Node2D

const MAX_HP = 20
var current_HP = 20

signal player_ready
signal update_hp

var timeline = ['frame','frame','frame','frame']

func _ready():
	pass
	
func add_to_timeline(atk, steps):
	print('steps: ',steps," length: ", steps.size())
	var found = false
	#var time =
	var i = 0
	var max = 4
	var steplength = steps.size()
	
	for slot in timeline: 
		if found == false && i < max:
			if i + steps.size()<=4 && slot =="frame":
				for a in range(i, steplength+i):	
					print('stepcheck: ',a)
					timeline[a] = atk
				#print("i: ",i," steps: ", steplength)
				#timeline[i] = atk 
				found = true
			else:
				print("not enough time")
			i+=1
	print(timeline)

	
func take_damage(dmg):
	current_HP -= dmg
	emit_signal("update_hp", current_HP)
	print('damage taken ', current_HP)



func print_scene_tree(node: Node = get_tree().root, indent: String = "") -> void:
	print(indent, node)
	for child in node.get_children():
		print_scene_tree(child, indent + "  ")

# Called when the node enters the scene tree for the first time.
func debug_player():
	print('Player HP: ', current_HP, '/', MAX_HP)
	print_scene_tree()


func _on_heavy_heavypress():
	pass # Replace with function body.
