extends Node2D

const MAX_HP = 20
var current_HP = 20

signal player_ready
signal update_hp

func _ready():
	pass
	
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
