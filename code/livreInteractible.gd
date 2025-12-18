extends Interactible

@export_multiline var accroche: String = "Je ne me souviens plus... De quoi parlions-nous ?"
@export var voix : AudioStream
@export var nom: String = "manuel"

@export var interface_livre : Control

func debutInteraction():
	interface_livre.cleanBoiteDialogue()
	interface_livre.initxt(accroche, nom)
	interface_livre.inivoix(voix)
	interface_livre.show()
	

func finInteraction():
	interface_livre.hide()
	interface_livre.cleanBoiteDialogue()
	get_tree().get_first_node_in_group("areajoueureuse").interactible_actuel = null
