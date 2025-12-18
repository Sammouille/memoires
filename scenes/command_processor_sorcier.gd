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
@export var j = 0

func process_command(input: String) -> String:

	var words = input.split(" ", false)
	var word_count = input.split(" ", false).size()
	print(word_count)
	if words.size() == 0 :
		return "Oui ! Je me souviens !! Je me souviens de la défaite du dragon ! Un combat magnifique face à cette créature fabuleuse !
J'avais encore à cette époque mon épée... Si seulement je savais où je l'avais mise..."
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

	if input.contains("dragon"): 
		return "Une créature magnifique ! Je suis tellement heureux d'avoir pu aidé alors... (NOTE DU MAGE : Donc non seulement vous étiez là, mais en plus vous étiez important ?)"
	if input.contains("épée") or input.contains("epee"):
		if j == 1: 
			return "Je n'en reviens pas qu'il ait donné cette épée... Une épée magique ! Elles ont beau être nombreuses, ça reste un objet formidable !! Et ce bouffon l'a donné"
		if j == 2:
			return "je crois qu'elle ressemblait à ça
        )         
          (            
        '    }      
      (    '      
     '      (   
      )  |    ) 
    '   /|\\    '
   )   / | \\  ' )   
  {    | | |  {   
 }     | | |  '
  '    | | |    )
 (    /| | |\\    '
  '  / | | | \\  (
}    \\ \\ | / /  '        
 (    \\ '-' /    }
 '    / ,-' \\    ' 
  }  / / | \\ \\  }
 '   \\ | | | /   } 
  (   \\| | |/  (
    )  | | |  )
    '  | | |  '
       J | L
 /|    J_|_L    |\\
 \\ \\___/ o \\___/ /
  \\_____ _ _____/
        |-|
        |-|
        |-|
   hs  ,'-''
       '---'
Que voulez-vous savoir d'autre ?"
		if j == 3:
			return "Je ne me souviens plus à quoi elle ressemblait... redemande moi plus tard."
		if j == 4:
			return "Heureusement que nous l'avions encore alors... Je doute que nous ayons survécu autrement"
		else :
			return "Mais où a bien pu passé cette fichue épée"
	if input.contains("souvenir"):
		return "Ca ne m'étonne pas que ça ne fonctionne pas !! Personne n'était jamais d'accord, et les consignes du roi ont provoqué tellement de bug, c'était ingérable, il a fallu en effacer la moitié. Et en si peu de temps, vous vous doutez bien qu'on a du réduire le scope de ce que l'on voulait mettre ! "
	if input.contains("attaquer") or input.contains("attaque"):
		return "Attaquer ? Attaquer qui ??"
	if input.contains("attaquer") or input.contains("attaque") and input.contains("dragon"):
		return "Attaquer le dragon ??? Mais nous étions là pour le défendre !!"
	if input.contains("attaquer") or input.contains("attaque") and input.contains("bouffon"):
		return "J'aurais adoré... Mais cet idiot est roi parmi les rois il faut croire... et parmis certains dieux"
	else :
		return "Je reste persuadé que ce souvenir est le bon."
