extends Interactible

@export_multiline var accroche: String = "Je ne me souviens plus... De quoi parlions-nous ?"
@export var voix : AudioStream
@export var nom: String = "gueux"
@export var interfaceDialogue : Control

func debutInteraction():
	interfaceDialogue.cleanBoiteDialogue()
	interfaceDialogue.initxt(accroche, nom)
	interfaceDialogue.inivoix(voix)
	%InterfaceDialogues.show()
	

func finInteraction():
	%InterfaceDialogues.hide()
	%InterfaceDialogues.cleanBoiteDialogue()
	
