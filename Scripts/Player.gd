extends Node2D

const MAX_HP = 20
var current_HP = 20

signal player_ready
signal update_hp

var timeline = ['frame','frame','frame','frame']

func _ready():
	pass
	
func add_to_timeline(atk):
	var found = false
	print(timeline)
	var i = 0
	for slot in timeline: 
		if found == false:
			if slot == 'frame':
				print(slot)
				print(atk)
				timeline[i] = atk 
				found = true
			i+=1

	
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
