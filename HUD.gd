extends CanvasLayer

@onready var CurrentWeaponLabel = $VBoxContainer/HBoxContainer/CurrentWeapon
@onready var CurrentAmmoLabel = $VBoxContainer/HBoxContainer2/CurrentAmmo
@onready var CurrentWeaponStack = $VBoxContainer/HBoxContainer3/WeaponStack
@onready var OnFloorLabel = $VBoxContainer/HBoxContainer4/OnFloor
@onready var JumpPressedLabel = $VBoxContainer/HBoxContainer5/JumpPressed
	
func _on_weapons_manager_update_ammo(Ammo):
	CurrentAmmoLabel.set_text(str(Ammo[0])+" / "+ str(Ammo[1]))

func _on_weapons_manager_update_weapon_stack(Weapon_Stack):
	CurrentWeaponStack.set_text("")
	for weapon in Weapon_Stack:
		CurrentWeaponStack.text += "\n"+weapon

func _on_weapons_manager_weapon_changed(Weapon_Name):
	CurrentWeaponLabel.set_text(Weapon_Name)

func _on_player_update_on_floor(onFloor):
	OnFloorLabel.set_text("On Floor: ")
	OnFloorLabel.text += str(onFloor)

func _on_player_update_jump_pressed(Jump_Pressed):
	JumpPressedLabel.set_text("Jump Pressed: ")
	JumpPressedLabel.text +=str(Jump_Pressed)
