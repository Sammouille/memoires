extends Interactible

@export_multiline var accroche: String = ""
@export var voix : AudioStream
@export var nom: String = "gueux"
@export var interfaceDialogue : Control

func debutInteraction():
	interfaceDialogue.cleanBoiteDialogue()
	interfaceDialogue.initxt(accroche, nom)
	interfaceDialogue.inivoix(voix)
	interfaceDialogue.show()

func finInteraction():
	interfaceDialogue.hide()
	interfaceDialogue.cleanBoiteDialogue()
	get_tree().get_first_node_in_group("areajoueureuse").interactible_actuel = null
	
