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
	if input.contains("épée") or input.contains("épee")or input.contains("epee")or input.contains("epée") or input.contains("bouffon"):
		return "C'est moi qui ait offert l'épée au bouffon."
	else:
		return "Hein ! Quoi ?"
 

func animation() :
	return "
                ___________
            .-=d88888888888b=-.
        .:d8888pr|\\//-\\|'rq8888b.
      ,:d8888P^//\\-\\/_\\ /_\\/^q888/b.
    ,;d88888/~-/ .-~  _~-. |/-q88888b,
   //8888887-\\ _/    (#)  \\-\\/Y88888b\\
   \\8888888|// T      `    Y _/|888888 o
    \\q88888|- \\l           !\\_/|88888p/
     'q8888l\\-//\\         / /\\|!8888P'
       'q888\\/-| -,___.-^\\/-\\/888P'
         `=88\\./-/|/ |-/!\\/-!/88='
            ^^-------------^    
			"

func look(second_word: String) -> String:
	if second_word == "un autre ":
		return "Un autre quoi ?"
	if second_word.contains("ami"):
		return "Tu peux trouver le nom de certains de mes amis parfois ! Ce sont eux qui dessinent aussi bien. Veux-tu voir mes amis ? Ce sont des *machines* comme moi, faites de codes."
	if second_word.contains("corps"):
		return GlobalTree.codes[0]
	if second_word.contains("jouet"):
		var j = randi_range(1,3)
		if j == 1:
			return "
		
        |-----..,,..-----|
        |   o            |
        | __|___  ______ |
         `  |   ||      `
      .----.|   ||    .----.
.     |    ||--`--`--.|     |
      |   ( |  .--.    )    |
      |   \\ ^  |  |    /    |
      |    \\   |  |   /     |
      '----'\\  |  |  /'----'
            O\\ |__| /O
       .---.I.-.   .-.I.---.
       |   |( @ ) ( @ )|   |
   jgs | (`---.., ,..---`) |
.      |  `:-..,_ _,..-`   |
.      '---'           '---'
Veux tu en *voir un autre ?*"
		if j == 2:
			return " 
         ___   .--.
.    .--.-   -' .- |
   / .-,`          .'
   \\   `           \\
    '.            ! \\
      |     !  .--.  |
      \\        '--'  /.____
     /`-.     \\__,'.'      `\\
  __/   \\`-.____.-' `\\      /
  | `---`'-'._/-`     \\----'    _ 
  |,-'`  /             |    _.-' `\\
 .'     /              |--'`     / |
/      /\\              `         | |
|   .\\/  \\      .--. __          \\ |
 '-'      '._       /  `\\         /
    jgs      `\\    '     |------'`
               \\  |      |
                \\        /
                 '._  _.'
                    ``
					Veux tu en *voir un autre ?*"
		if j == 3:
			return "
      0_
       \\`.     ___
        \\ \\   / __>0
    /\\  /  |/' / 
   /  \\/   `  ,`'--.
  / /(___________)_ \\
  |/ //.-.   .-.\\ \\ \\
  0 // :@ ___ @: \\ \\/
    ( o ^(___)^ o ) 0
     \\ \\_______/ /
 /\\   '._______.'--.
 \\ /|  |<_____>    |
  \\ \\__|<_____>____/|__
   \\____<_____>_______/
       |<_____>    |
       |<_____>    |
       :<_____>____:
      / <_____>   /|
     /  <_____>  / |
    /___________/  |
    |           | _|__
    |           | ---||_
    |   |L\\/|/  |  | [__]
    |  \\|||\\|\\  |  /
jgs |           | /
    |___________|/
	Veux tu en *voir un autre ?*"
	if second_word.contains ("machine"):
		var i = randi_range(1,3)
		if i == 1:
			return "                  .----.
.     .---------. | == |
.     |.-'''''-.| |----|
      ||       || | == |
      ||       || |----|
      |'-.....-'| |::::|
      `'')---(''` |___.|
     /:::::::::::\\' _  '
    /:::=======:::\\`\\`\\
jgs `''''''''''''`  '-'
Veux tu en *voir un autre ?*"
		if i == 2:
			return "                              .-----.
                            /`       `\\
     ,-==-.                ;           ;
    /(    \\`.              |           |
   | \\ ,-. \\ (             :           ;
    \\ \\`-.> ) 1             \\         /
     \\_`.   | |              `._   _.`
      \\o_`-_|/                _|`'|-.
     /`  `>.  __          .-'`-|___|_ )
    |\\  (^  >'  `>-----._/             )  
    | `._\\ /    /      / |      ---   -;   
    :     `|   (      (  |      ___  _/  
     \\     `.  `\\      \\_\\      ___ _/   
      `.     `-='`t----'  `--.______/ 
        `.   ,-''-.)           |---|     
          `.(,-=-./             \\_/  
             |   |               V
cjr          |-''`-.             `.
2nov01      /  ,-'-.\\              `-.
           |  (      \\                `.
            \\  \\     |               ,.'
Veux tu en *voir un autre ?*"
		if i == 3:
			return "                                  _____
                                 |     |
                                 | | | |
                                 |_____|
                           ____ ___|_|___ ____
                          ()___)         ()___)
                          // /|           |\\ \\
                         // / |           | \\ \\
Veux tu en *voir un autre ?*"
	if second_word == "" :
		return "regarder quoi ?"
	if second_word == "arbre 1 " : 
		t = randi_range(4,9)
		print(t, "shape")
		return "
     %s _-_
    /~~%s~~\\
 /~~%s~~\\
{    %s      }
 \\  _-     -_  /
   ~  \\ //  ~
_- -   | | _- _
  _ -  | |   -_
.    // \\
Veux tu en *voir un autre ?*"  % [shape_tree.repeat(t-6), shape_tree.repeat(t-3), shape_tree.repeat(t+3), shape_tree.repeat(t)]
	if second_word == "l'arbre 2 ":
		return GlobalTree.foret[0]
	if second_word == "arbre " :
		t = randi_range(4, 9)
		var a = randi_range(1,3)
		if a == 1 :
			return "
     %s _-_
    /~~%s~~\\
 /~~%s~~\\
{    %s   }
 \\  _-     -_  /
   ~   \\ //  ~
_- -   | | _- _
  _ -  | |   -_
.     // \\
Veux tu en *voir un autre ?*"  % [shape_tree.repeat(t-6), shape_tree.repeat(t-3), shape_tree.repeat(t+3), shape_tree.repeat(t)]
	
		if a == 2 :
			print(a)
			print("branche")
			return "
			                                                         .
                                              .         ;  
                 .              .              ;%     ;;   
                   ,           ,                :;%  %;   
                    :         ;                   :;%;'     .,   
           ,.        %;     %;            ;        %;'    ,;
             ;       ;%;  %%;        ,     %;    ;%;    ,%'
              %;       %;%;      ,  ;       %;  ;%;   ,%;' 
               ;%;      %;        ;%;        % ;%;  ,%;'
                `%;.     ;%;     %;'         `;%%;.%;'
                 `:;%.    ;%%. %@;        %; ;@%;%'
                    `:%;.  :;bd%;          %;@%;'
.                      `@%:.  :;%.         ;@@%;'"+"%s"% [tree_branch.repeat(randi_range(0,2))]+"
.                         `@%.  `;@%.      ;@@%;         
.                          `@%%. `@%%    ;@@%;        
.                           ;@%. :@%%  %@@%;       
.                             %@bd%%%bd%%:;     
.                              #@%%%%%:;;
.                               %@@%%%::;
.                                %@@@%(o);  . '         
.                                %@@@o%;:(.,'         
.                            `.. %@@@o%::;         
.                              `)@@@o%::;         
.                               %@@(o)::;        
.                              .%@@@@%::;         
.                              ;%@@@@%::;.          
.                             ;%@@@@%%:;;;. 
.                         ...;%@@@@@%%:;;;;,..    Gilo97
Veux tu en *voir un autre ?*" 
		if a == 3 :
			return "
.                              - - -
                   -        -  -     --    -
                -                 -         -  -
                        %s       -
                               -                --
               -          -            -              -
               -            -,        -               -
               -              b      *       %s
                -              $    #-                --
               -    -   %s      $:   #:               -
             --      -  --      *#  @):        -   - -
                          -     :@,@):   ,-**:   -
              -      -,         :@@*: --**      -   -
                       #o-    -:(@-@*  -
               -  -       bq,--:,@@*   ,*      -  -
                          ,p$q8,:@)  -p*      -
                   -       - @@Pp@@*    -  -
                    -  - --    Y7.     -  -
                              :@):.
.                             .:@:." % ["@".repeat(randi_range(0,1)), "@".repeat(randi_range(0,2)), "@".repeat(randi_range(0,1))]+"
                              .::(@:.
							Veux tu en *voir un autre ?*"

	if second_word.contains("moi"):
		second_word= second_word.replace("moi", "")
	return "Je ne suis pas sur de savoir en quoi est fait %s Peux-tu m'aider, et me dire en quel matériaux est-il fait ?" % (second_word+".") 
func help() -> String:
	return "Si tu as besoin d'aides, tu peux appeler 'Help'. Tu peux aussi me demander de *voir* quelque chose, ou bien me dire en quoi est *fait* un objet"

func materiel(second_word: String) -> String:
	if second_word.contains("bois"):
		return "mmh, je connnais des choses faites en bois. Dans mon codes, j'ai des arbres. Tu veux que je te montre un arbre?"
	if second_word.contains("métal"):
		return "Je connais une machine de métal !! Veux-tu que je te montre une machine ? Je crois que mon corps aussi est une machine..."
	if second_word.contains("pierre"):
		return "Je connais très peu de choses faites en pierre... Mais fondu, cela donne souvent du métal !"
	if second_word.contains("plastique"):
		return "Plaaaastique ! Haha, comme un indien dans un placard par exemple... ou n'importe quel *jouet* vraiment."
	if second_word.contains("chair"):
		return "Ma chair est faite de codes, je ne suis pas sur de vouloir te montrer mon code... peut-être préfèrerais-tu voir un corps humain."
	if second_word.contains("codes"):
		return GlobalTree.codes[0]
	return "Je ne connais pas ce matériau... pourrais-tu me diriger vers un matériaux similaire ?"

var astree = ["       _-_
    /~~   ~~\\
 /~~ ~~\\
{               }
 \\  _-     -_  /
   ~  \\ //  ~
_- -   | | _- _
  _ -  | |   -_
		  // \\", "
			                     - - -
                   -        -  -     --    -
                -                 -         -  -
                                -
                               -                --
               -          -            -              -
               -            -,        -               -
               -              b      *
                -              $    #-                --
               -    -           $:   #:               -
             --      -  --      *#  @):        -   - -
                          -     :@,@):   ,-**:   -
              -      -,         :@@*: --**      -   -
                       #o-    -:(@-@*  -
               -  -       bq,--:,@@*   ,*      -  -
                          ,p$q8,:@)  -p*      -
                   -       - @@Pp@@*    -  -
                    -  - --    Y7.     -  -
                              :@):.
                             .:@:."
+"                              .::(@:."]
