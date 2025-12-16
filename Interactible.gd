extends Node3D
class_name Interactible

@export var area: Area3D

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interagir"):
		if area:
			if area.interactible:
				interaction()

func interaction():
	pass
