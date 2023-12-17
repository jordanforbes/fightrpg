extends CanvasLayer

@onready var current_player_hp_label = $Bars/player_life/hp1
@onready var current_enemy_hp_label = $Bars/enemy_life/hp2

@onready var frame1 = $Timeline/frame1/Label
@onready var frame2 = $Timeline/frame2/Label
@onready var frame3 = $Timeline/frame3/Label
@onready var frame4 = $Timeline/frame4/Label

#players
func _on_jab_jabpress():
	current_enemy_hp_label.set_text(str(Enemy.current_HP))


func _on_straight_straightpress():
	current_enemy_hp_label.set_text(str(Enemy.current_HP))


func _on_kick_kickpress():
	current_enemy_hp_label.set_text(str(Enemy.current_HP))


func _on_heavy_heavypress():
	current_enemy_hp_label.set_text(str(Enemy.current_HP))


func _on_block_blockhit():
	current_enemy_hp_label.set_text(str(Enemy.current_HP))
