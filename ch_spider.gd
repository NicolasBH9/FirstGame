extends CharacterBody3D

var angle=0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
# Replace with function body.
	
func _physics_process(delta):
	#look_at(1, Vector3 (0,1*delta,0))
	#rotation_degrees.z += -20*delta
	angle =  angle + (PI*delta)/3
	if angle >= 0:
		#angle=0
		set_rotation(Vector3(0, -angle*delta, 0))
	pass
