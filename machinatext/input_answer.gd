extends VBoxContainer

var fade_in = create_tween()

@onready var answer_given: Label = $answer_given

var idx_txt:= 0
var type_speed:= 0.1
var idx_spd:= 0.0

func set_voice(voix: AudioStream):
	%AudioStreamPlayer.stream = voix

func set_text(input: String, response: String):
	$input_submitted.text = " > " + input
	$answer_given.text = response
	$answer_given.set_visible_ratio(0)

func _process(delta: float) -> void:
	if answer_given.visible_characters < answer_given.text.length():
		idx_spd += delta
		if idx_spd > type_speed:
			idx_spd -= type_speed
			answer_given.visible_characters += 1
			if answer_given.text.substr(idx_txt, 0) != " ":
				%AudioStreamPlayer.play()
			idx_txt += 1
