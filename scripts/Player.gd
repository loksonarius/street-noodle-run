class_name Player
extends KinematicBody
# Player-controlled physics body that handles inputs for events

# Signals
# Enums
# Constants
var GRAVITY: Vector3 = Vector3.DOWN * 9.8
var SPEED: int = 4
# Exports
# Public Vars
# Private Vars
var _vel: Vector3 = Vector3.ZERO
# Ready Vars

func _init() -> void:
	pass

func _ready() -> void:
	pass

# Override Funcs
func _process(_delta: float) -> void:
	print("pos/vel="+str(_vel)+"/"+str(global_transform.origin))

func _physics_process(delta: float) -> void:
	_get_input()
	_vel += GRAVITY * delta
	_vel = move_and_slide(_vel, Vector3.UP)
	if is_on_floor():
		_vel.y = 0

# Public Methods
# Private Methods
func _get_input() -> void:
	var in_vec := Vector3.ZERO
	in_vec.z += Input.get_action_strength("down") - Input.get_action_strength("up")
	in_vec.x += Input.get_action_strength("right") - Input.get_action_strength("left")
	_vel.z = in_vec.z * SPEED
	_vel.x = in_vec.x * SPEED
