extends Interactible

@export_multiline var accroche: String = "Je ne me souviens plus... De quoi parlions-nous ?"
@export var voix : AudioStream
@export var nom: String = "manuel"

func debutInteraction():
	%InterfaceLivre.cleanBoiteDialogue()
	%InterfaceLivre.initxt(accroche, nom)
	%InterfaceLivre.inivoix(voix)
	%InterfaceLivre.show()
	

func finInteraction():
	%InterfaceLivre.hide()
	%InterfaceLivre.cleanBoiteDialogue()
	
