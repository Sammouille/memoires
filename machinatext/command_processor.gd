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

	if input.contains("dragon") or input.contains("combat"): 
		if j == 4:
			return "La bête était féroce !! Des écailles aussi lumineuses qu'écrasantes, et dont les ailes semblaient aussi aiguisées que ses griffes ! Et quelles griffes ! Elles ont à elles seule décimé la moitié de mes hommes, tandis que la seconde moitié mourrait brulé ou croqué... Il ne restait finalement que moi face à la créature. Moi et mon épée."
	if input.contains("épée") or input.contains("epee"):
		if j == 1: 
			return "Tu as retrouvé mon épée !.. Non ? Elle était magique tu sais... Elle brillait lorsque je me sentais en danger, et pouvait tout traverser comme un fil à beurre... oh oui du beurre"
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
"
		if j == 3:
			return "Je ne me souviens plus à quoi elle ressemblait... redemande moi plus tard."
		else :
			return "Comment ? Non, je ne crois pas que je me souviennes de ça... Où est cette fichue épée..."
	else :
		return "Comment ? Non, je ne crois pas que je me souviennes de ça... Où est cette fichue épée..."
