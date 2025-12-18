extends Control

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
var shape_tree = " "
var tree_branch = "o@@o%;@"
var t = randi_range(1,9)


func process_command(input: String) -> String:
	if input.contains("séduire") or input.contains("séduction"):
		return "Séduire un dragon ?? Je n'aurais jamais osé... une créature si merveilleuse, si fantastique... Dont l'éclat est si... non je n'aurais jamais osé"
	if input.contains("épée") or input.contains("épee")or input.contains("epee")or input.contains("epée"):
		if t == 5 :
			return "C'est ici que je l'ai perdu !
		
		                                (NOTE DU BOUFFON : Sans vouloir déranger, c'était une question) C'est ici que je l'ai perdu ?"
		else :
			return " Vous avez retrouvé mon épée ? Non ?... Revenez me voir si vous avez une idée, je crois qu'elle ressemblait à ça
                           ___
                          ( ((
                           ) ))
  .::.                    / /(
 'M .-;-.-.-.-.-.-.-.-.-/| ((::::::::::::::::::::::::::::::::::::::::::::::.._
(J ( ( ( ( ( ( ( ( ( ( ( |  ))   -====================================-      _.>
 `P `-;-`-`-`-`-`-`-`-`-\\| ((::::::::::::::::::::::::::::::::::::::::::::::''
  `::'                    \\ \\(
                           ) ))
                          (_((
"
	elif input.contains("colosse") or input.contains("géant") or input.contains("golem"):
		return "Non, il n'y a jamais eu de golem"
	elif input.contains("attaque") or input.contains("attaquer") :
		return "Nous avons perdu déjà tellement d'hommes... si seulement j'avais mon épée, je saurais filer la bête d'un simple trait de mon épée."
	elif input.contains("mage") or input.contains("sorcier") or input.contains("magicien") or input.contains("alchimiste"):
		return "Seul ! J'étais seul face à la bête ! Et c'est seul que je l'ai décimé !... Si seulement j'avais mon épée..."
	elif input.contains("bouffon"):
		return "Non il n'a jamais été là quand il le fallait."
	elif input.contains("combat"):
		return "Je crois que je les ai gagné pour la plupart... oui j'étais formidable vous saviez (NOTE DU SORCIER :... non non rien)"
	else:
		return "J'ai menti, j'avoue tout !! Je ne me souviens pas vraiment de comment s'est déroulé ce combat..."
 
