extends Control

const input_answer = preload("res://machinatext/input_answer.tscn")
const answer_given = preload("res://machinatext/answer_given.tscn")

@export var max_lines_rememebered = 30

var max_scroll_length := 0

var voix_actuelle: AudioStream

@onready var input_node := %input
@onready var history_rows = $PanelContainer/MarginContainer/rows/GameInfo/ScrollContainer/History
@onready var scroll = $PanelContainer/MarginContainer/rows/GameInfo/ScrollContainer
@onready var scrollbar = scroll.get_v_scroll_bar()
@onready var command_processor = $"command processor"
@onready var total_length = 0
@onready var text_speed = 2


func _ready() -> void:
	scrollbar.connect("changed", scrollbar_change)
	max_scroll_length = scrollbar.max_value
	var start_msg = answer_given.instantiate()
	await get_tree().create_timer(0.5).timeout
	start_msg.text = "Mon corps est une machine faites de code... Je crois que je pourrais te la montrer si tu veux. Oui. Dis-moi, que voudrais-tu voir"
	add_answer(start_msg)
	

func scrollbar_change():
	if max_scroll_length != scrollbar.max_value:
		max_scroll_length=scrollbar.max_value
		scroll.scroll_vertical = max_scroll_length


func _on_input_text_submitted(new_text: String) -> void:
	if (new_text.is_empty()) :
		return
	var Input_Response = input_answer.instantiate()
	var response = command_processor.process_command(new_text) 
	if voix_actuelle:
		Input_Response.set_voice(voix_actuelle)
	Input_Response.set_text(new_text, response)
	history_rows.add_child(Input_Response)
	
	
	

func add_answer(answer_given: Label):
	answer_given.set_visible_ratio(1)
		
			
	
	#var fade_in = create_tween()
	#fade_in.tween_property(answer_given, "visible_ratio", 1, answer_given.text.length()*0.03)
	history_rows.add_child(answer_given)
	

	if history_rows.get_child_count() > max_lines_rememebered:
		var souvenirs = history_rows.get_child_count() - max_lines_rememebered
		for _i in range(souvenirs) :
			history_rows.get_child(_i).queue_free()


func _on_button_button_down() -> void:
	for i in history_rows.get_child_count() :
		history_rows.get_child(i).queue_free()
	var start_msg = answer_given.instantiate()
	start_msg.text = "Je me sens si fatigué... J'ai vécu une belle et longue vie... Je crois... Je pense oui... Je me souviens un peu de la plupart des choses que j'ai faites, et j'ai faites de bonnes choses..."
	add_answer(start_msg)


func cleanBoiteDialogue():
	for i in history_rows.get_child_count() :
		history_rows.get_child(i).queue_free()

func initxt(accroche: String, titre: String):
	if %Titre:
		%Titre.text = titre
	var start_msg = answer_given.instantiate()
	start_msg.text = accroche
	add_answer(start_msg)

func inivoix(voix: AudioStream):
	voix_actuelle = voix
