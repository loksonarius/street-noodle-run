class_name Main
extends Node
# Entry point for game state, managing general game inputs and resource use

# Signals
# Enums
# Constants
# Exports
# Public Vars
# Private Vars
# Ready Vars

func _init() -> void:
	pass

func _ready() -> void:
	pass

# Override Funcs
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reload"):
		if get_tree().reload_current_scene() != OK:
			print("failed to reload main scene")
# Public Methods
# Private Methods
