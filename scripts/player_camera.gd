extends Camera3D

@export var pitch: float = -60.0
@export var offset: Vector3 = Vector3(0, 10, 5)
@export var target: Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees.x = pitch
	position = target.position + offset


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = lerp(position, target.position + offset, 0.2)
	
