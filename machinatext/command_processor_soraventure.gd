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
		return "Jamais je ne l'aiderai, plutôt crever ! Je le maudis !"
	else :
		return "Maudit soit ce roitelet !"
