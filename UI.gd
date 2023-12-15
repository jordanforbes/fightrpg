extends CanvasLayer

@onready var current_player_hp_label = $Bars/player_life/hp1


func _on_jab_jabpress():
	current_player_hp_label.set_text(str(Player.current_HP))


func _on_straight_straightpress():
	current_player_hp_label.set_text(str(Player.current_HP))


func _on_kick_kickpress():
	current_player_hp_label.set_text(str(Player.current_HP))


func _on_heavy_heavypress():
	current_player_hp_label.set_text(str(Player.current_HP))


func _on_block_blockhit():
	current_player_hp_label.set_text(str(Player.current_HP))
