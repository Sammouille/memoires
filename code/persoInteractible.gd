extends Interactible

@export_multiline var accroche: String = "Je ne me souviens plus... De quoi parlions-nous ?"
@export var voix : AudioStream
@export var nom: String = "gueux"

func debutInteraction():
	%InterfaceDialogues.cleanBoiteDialogue()
	%InterfaceDialogues.initxt(accroche, nom)
	%InterfaceDialogues.inivoix(voix)
	%InterfaceDialogues.show()
	

func finInteraction():
	%InterfaceDialogues.hide()
	%InterfaceDialogues.cleanBoiteDialogue()
	
