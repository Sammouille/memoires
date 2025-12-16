extends Control

@export var ordinateur:Array[Texture2D]
@export var ordiJPG = preload("res://iam.tscn")

func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://control.tscn")

func _on_button_2_button_down() -> void:
	var new_ordiJPG = ordiJPG.instantiate()
	add_child(new_ordiJPG)
	new_ordiJPG.global_position = Vector2(650,287.0)
	new_ordiJPG.scale = Vector2(randi_range(4,7),randi_range(4,6))
	await get_tree().create_timer(1).timeout
	new_ordiJPG.queue_free()
