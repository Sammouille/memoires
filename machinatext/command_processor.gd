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
		return "Je reste convaincu que personne n'a attaqué qui que ce soit à ce moment là"
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

	if input.contains("que s'est-il passé ?") or input.contains("roi"): 
			return "Malgré sa bétise, le roi n'aurait jamais attaqué le colosse... Cette pauvre créature est finalement peu impressionnante"
	if input.contains("colosse"):
		return "Une créature magnifique ! Bien que beaucoup moins impressionnante qu'il n'y parait... (NOTE DU SoRcIeR : Evidemment que le roi n'a jamais attaqué le colosse ! Il s'agissait d'un dragon !!)"
	if input.contains("sorcier"):
		return "Ne vous préocuppez pas de cet idiot... et encore moins du bouffon. Je suis sur qu'il s'agissait d'un colosse ! Impossible d'oublier une si petite créature."
	else :
		return "(NOTE DU ROI : Je vous assure qu’il s’agissait d’un dragon !! Le golem c’est une toute autre histoire. "
