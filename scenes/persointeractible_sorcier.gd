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
	interfaceDialogue.grab_focus()

func finInteraction():
	interfaceDialogue.hide()
	interfaceDialogue.cleanBoiteDialogue()
	
