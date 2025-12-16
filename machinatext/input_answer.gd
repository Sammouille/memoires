extends VBoxContainer
var fade_in = create_tween()
	
func set_text(input: String, response: String):
	$input_submitted.text = " > " + input
	$answer_given.text = response
	$answer_given.set_visible_ratio(0)
	fade_in.tween_property($answer_given, "visible_ratio", 1, 3)
