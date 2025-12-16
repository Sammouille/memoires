extends Interactible

@export var machine_txt : Control

func interaction():
	machine_txt.input_node.grab_focus()
