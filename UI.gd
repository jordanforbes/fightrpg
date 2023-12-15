extends CanvasLayer

@onready var current_player_hp_label = $Bars/player_life/hp1

func _on_player_update_hp(hp):
	print("hp changed")
	current_player_hp_label.set_text(str(hp))

func _on_jab_jabpress(press,hp):
	current_player_hp_label.set_text(str(Player.current_HP))

