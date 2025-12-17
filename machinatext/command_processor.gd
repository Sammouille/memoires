extends Control #pour le géant

const arbre = preload("res://machinatext/tree.gd")
var arbre0 = [$tree]
var corps = [$"/root/GlobalTree"]
const answer_given = preload("res://machinatext/answer_given.tscn")
const input_answer = preload("res://machinatext/input_answer.tscn")
var fade_in = create_tween()
@export var j = 0

func process_command(input: String) -> String:

	var words = input.split(" ", false)
	var word_count = input.split(" ", false).size()
	print(word_count)
	if words.size() == 0 :
		return "(NOTE DU MAGE : le géant nous fixait du regard il me semble… cela est si flou… elle ne semblait pas particulièrement terrible)"
	var first_word = words[0].to_lower()
	var second_word = "".to_lower()
	if words.size() > 1: 
		for w in words.size()-1:
			second_word += words[1+w] + " "
			w+=1
		print(second_word)
	if Input.is_action_just_pressed("ui_accept"):
		j = randi_range(1,4)
		print(j)

	if input.contains("attaquer") or input.contains("attaque"): 
			return "Grrr…. (NOTE DU MAGE : le roi n’aurait jamais attaqué le golem… malgré toute sa bétise, j’en reste persuadé"
	if input.contains("séduire"):
		return "Ho Ho Ho(NOTE DU MAGE : …) (NOTE DU SORCIER : Je t’assure que ça se serait passé comme ça SI CA AVAIT EU LIEU !  Hors, ce n’est pas le cas)"
	else :
		return "(NOTE DU ROI : Je vous assure qu’il s’agissait d’un dragon !! Le golem c’est une toute autre histoire. "
