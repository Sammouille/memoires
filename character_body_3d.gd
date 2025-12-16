extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 3.5
const fov = 70
#BOB head
@export var Bob_freq = 2.0
@export var bob_amp = 0.08
@export var t_bob = 0.0

@export var sensitivity = 0.01

@onready var headPOV = $head/headVIEW
@onready var head = $head

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * sensitivity)
		headPOV.rotate_x(-event.relative.y * sensitivity)
		headPOV.rotation.x = clamp(headPOV.rotation.x, deg_to_rad(-60), deg_to_rad(130))


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Add zoom
	if Input.is_action_pressed("zoom"):
		headPOV.fov = 20
		sensitivity = 0.005
	else:
		headPOV.fov = 70

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (head.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	#head bob
	t_bob += delta * velocity.length() * float(is_on_floor())
	headPOV.transform.origin = _headbob(t_bob)

	move_and_slide()

func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * Bob_freq) * bob_amp
	pos.x = cos(time * Bob_freq /2) * bob_amp
	return pos
