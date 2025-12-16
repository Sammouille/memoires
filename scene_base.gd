extends Node3D
@onready var anim: AnimatedSprite3D = $AnimatedSprite3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play("standing_walk")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
