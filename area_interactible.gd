extends Area3D


var interactible:= false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(persoProche)

func persoProche(body):
	if body is CharacterBody3D:
		interactible = true

func persoLoin(body):
	if body is CharacterBody3D:
		interactible = false
