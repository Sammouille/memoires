extends Node3D
class_name Interactible

@export var area: Area3D

func _ready() -> void:
	area.body_exited.connect(persoParti)

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interagir"):
		if area:
			if area.interactible:
				debutInteraction()
	elif Input.is_action_just_pressed("ui_cancel"):
		finInteraction()

func debutInteraction():
	pass

func finInteraction():
	pass

func persoParti(_body):
	finInteraction()
