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
	if input.contains("brille"):
		print("l'épée était un objet qui brillait lorsque porté par un coeur pur. Elle rouillait de la main d'un bouffon.")
		return "print([red*$ctèd])"
	if input.contains("séduire") or input.contains("séduction"):
		return "Ha ha... (NOTE DU MAGE : on peut éviter ?)"
	if input.contains("épée") or input.contains("épee")or input.contains("epee")or input.contains("epée"):
		return "[redacted]"
	elif input.contains("colosse") or input.contains("géant") or input.contains("golem"):
		return "Nan mais alors moi, je suis là pour amuser la foule à la base, et on n'a visiblement pas le temps d'écrire des textes incroyables et rigolos, donc on va se contenter de rappeler que personne n'est sur de savoir s'il s'agissait d'un golem ou d'un dragon, mais allez-y ! critiquez ! j'aimerai bien vous voir vous... "
	elif input.contains("attaque") or input.contains("attaquer") :
		return "... Moi? Attaquer une créature ? Et la vaincre ?... Oui ça peut ressembler à ce que je peux dire, mais je ne peux pas vous assurer qu'il s'agisse de la vérité. C'est co"
	elif input.contains("donner") :
		return "Ah bah merci"
	elif input.contains("mage") or input.contains("sorcier") or input.contains("magicien") or input.contains("alchimiste"):
		return "oui... probablement..."
	elif input.contains("bouffon"):
		while t >=5:
			t += 1
			print("je n'aurais jamais l'épée")
			return "Je n'aurais jamais l'épée"
		return "l'épée brille quand je la porte au coeur"
	else:
		return "Je ne comprends pas ..."
 
