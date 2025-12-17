extends Area3D

var interactible_actuel: Node3D


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interagir"):
		if has_overlapping_areas() and !interactible_actuel:
			interactible_actuel = get_overlapping_areas()[0].get_parent()
			interactible_actuel.debutInteraction()
	

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		if interactible_actuel:
			interactible_actuel.finInteraction()
			interactible_actuel = null
