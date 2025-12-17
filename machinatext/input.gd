extends LineEdit

func _ready() -> void:
	grab_focus()
	visibility_changed.connect(devenuVisible)

func _process(delta: float) -> void:
	if is_visible_in_tree():
		grab_focus()

func _on_text_submitted(new_text: String) -> void:
	clear()
	grab_focus()
	

func devenuVisible():
	if is_visible_in_tree():
		grab_focus()
