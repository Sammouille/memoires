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
	if input.contains("séduire") or input.contains("séduction"):
		return "Ce fut un moment gênant et atrocement long. Le Roi à commencé par se racler la gorge avant de me fixer dans le yeux, s'adressant à moi dans une voix suave qui n'était qu'un florilège de niaiserie."
	if input.contains("épée") or input.contains("épee")or input.contains("epee")or input.contains("epée"):
		return "Ce fut les dieux qui ont enchanté l'épée. Et par dieux, j'entends bien évidemment [redacted]"
	elif input.contains("colosse") or input.contains("géant") or input.contains("golem"):
		return "Il m'a vraiment confondu avec un colosse ?? Je veux bien ne pas être particulièrement dangereux, mais de là à me confondre avec une créature inférieure..."
	elif input.contains("attaque") or input.contains("attaquer") :
		return "Alors, si je me rappelle bien, ce fut le Bouffon et le druide qui ont réussi à me vaincre. Le Bouffon qui est un héros au cœur pur, a réussir à me faire tomber avec son épée enchanté quand au druide, il m'a maitrisé en se transformant en un dragon-ours si je ne dis pas de bêtise."
	elif input.contains("donner") :
		return "oui... probablement... (NOTE DU SORCIER : je crois que si on lui rappelle à qui il a donné l'épée, on devrait trouver une autre save)"
	elif input.contains("mage") or input.contains("sorcier") or input.contains("magicien") or input.contains("alchimiste"):
		return "oui... probablement..."
	elif input.contains("bouffon"):
		return "A-t-il retrouvé l'épée ? Le roi doit lui en vouloir..."
	else:
		return "Je ne comprends pas ..."
 
