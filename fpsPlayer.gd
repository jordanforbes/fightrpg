extends RigidBody3D

var mouse_sensitivity := 0.001
var twist_input := 0.0
var pitch_input := 0.0
var on_floor = true
var jump_pressed = false

signal Update_On_Floor
signal Update_Jump_Pressed

@onready var twist_pivot := $TwistPivot
@onready var pitch_pivot := $TwistPivot/PitchPivot 

const JUMP_VELOCITY = 4.5

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	emit_signal("Update_On_Floor",on_floor)
	emit_signal("Update_Jump_Pressed",jump_pressed)
	
func _process(delta: float) -> void:
	var input := Vector3.ZERO
	input.x = Input.get_axis("move_left", "move_right")
	input.z = Input.get_axis("move_forward", "move_backward")
	if Input.is_action_pressed("jump"):
		jump()

	apply_central_force(twist_pivot.basis * input * 1200.0 * delta)

	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
	twist_pivot.rotate_y(twist_input)
	pitch_pivot.rotate_x(pitch_input)
	pitch_pivot.rotation.x = clamp(
		pitch_pivot.rotation.x, deg_to_rad(-30), deg_to_rad(30)
	)
	
	twist_input = 0.0
	pitch_input = 0.0

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			twist_input = - event.relative.x *mouse_sensitivity
			pitch_input = - event.relative.y * mouse_sensitivity
			
func jump():
	jump_pressed = true
	emit_signal("Update_Jump_Pressed",jump_pressed)
