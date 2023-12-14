extends Node2D

const MAX_HP = 20
var current_HP = 20

# Signal emitted when the player is ready
#signal player_ready

func print_scene_tree(node: Node = get_tree().root, indent: String = "") -> void:
	print(indent, node)
	for child in node.get_children():
		print_scene_tree(child, indent + "  ")

# Called when the node enters the scene tree for the first time.
func debug_player():
	print('Player HP: ', current_HP, '/', MAX_HP)
	#print_scene_tree()

func _ready():
	debug_player()
	# Emit the signal to notify that the player is ready
	emit_signal("player_ready")
