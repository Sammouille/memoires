extends Control #pour le géant

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
@export var j = 0

func process_command(input: String) -> String:
	if input.contains("venir") or input.contains("avec"): 
		return "Bien évidemment que je vais venir avec le roi, après tout c'est lui qui m'a gracieusement offert cette épée enchantée dont il était le noble utilisateur auparavant."
	else :
		return "Notre bon roi a-t-il besoin de quelque chose ? Je donnerai corps et âme pour le servir !"
