extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)
	
	pass 
	
func _physics_process(delta):
	var t = get_transform()
	
	if Input.is_action_pressed("ui_right"):
		t.origin.x += 10*delta
		#t.origin.x += speed*delta
		set_transform(t)
	if Input.is_action_pressed("ui_left"):
		t.origin.x -= 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_up"):
		t.origin.z  -= 10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_down"):
		t.origin.z +=10*delta
		set_transform(t)
	if Input.is_action_pressed("ui_select"):
		t.origin.y +=15*delta
		set_transform(t)
	
func _input(event):
	
	if event.is_action_pressed("ui_select"):
		apply_impulse( Vector3(), Vector3(0,10,0))
	pass


func _on_body_entered(body):
	
	if body.is_in_group("Spiders"):
		body.hide()
	pass # Replace with function body.
