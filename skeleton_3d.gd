extends Skeleton3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var main = create_tween()
	get_bone_pose_rotation(005)
	main.tween_property(get_bone_pose_rotation(005), "rotation", 100, 1)
