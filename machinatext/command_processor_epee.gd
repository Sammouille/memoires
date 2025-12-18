extends Control #pour le géant

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
@export var j = 0

func process_command(input: String) -> String:
	if input.contains("coeur"):
		if input.contains("pûreté") or input.contains("pureté"): 
			return "Les légendes finirent par oublier ce qui fut réellement décidé à propos de mes conditions. Ce n'est pas la pûreté de coeur qui est demandée, c'est la jovialité de coeur."
		if input.contains("jovialite") or input.contains("jovialité"):
			return "La jovialité de coeur c'est être à la recherche de la joie au goût le plus fort, mais surtout c'est avoir compris que son goût est prononcé proportionnellement à la quantité de personnes qui la partagent."
	
	return "Je ne peux pas parler, je suis une épée."
