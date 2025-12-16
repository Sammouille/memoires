extends Interactible

@export var machine_txt : Control

func interaction():
	$Control.show()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		$Control.hide()
