extends Control

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
var shape_tree = " "
var tree_branch = "o@@o%;@"
var t = randi_range(5,9)


func process_command(input: String) -> String:
	if input.contains("épée") or input.contains("épee")or input.contains("epee")or input.contains("epée"):
		return "Je ne me souviens plus où est-ce que j'ai mis l'épée... elle m'aurait servi à cet instant pour combattre le titanesque dra-... colosse"
	elif input.contains("colosse") or input.contains("géant") or input.contains("golem"):
		return "Il était si grand qu'il ne pouvait pas se tenir debout dans le donjon. (NOTE DE L'ALCHIMISTE : Si quelqu'un peut remap la scène pour mettre un donjour svp, ça ne fait plus aucun sens là)"
	elif input.contains("attaque") or input.contains("attaquer") :
		return "Si j'avais mon épée magique, je n'hésiterai pas à attaquer ce monstre !.. Mais je ne me souviens plus à qui j'ai pu la donner"
	elif input.contains("donner") :
		return "oui... probablement... (NOTE DU SORCIER : je crois que si on lui rappelle à qui il a donné l'épée, on devrait trouver une autre save)"
	elif input.contains("mage") or input.contains("sorcier") or input.contains("magicien") or input.contains("alchimiste"):
		return "oui... probablement..."
	elif input.contains("bouffon"):
		var i = 1
		while i > 0:
				i += 1
		return i
	else:
		return "Je ne comprends pas ..."
 
