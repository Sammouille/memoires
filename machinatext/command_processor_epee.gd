extends Control #pour le géant

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
@export var j = 0

func process_command(input: String) -> String:
	if input.contains("personne") or input.contains("qui"): 
		return "La personne qui rigole sans cesse."
	else :
		return "Je ne sais pas parler, je suis une épée."
