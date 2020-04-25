extends RigidBody
export (Vector3) var torque
export (Resource) var spawn

var time = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = time + 1
	add_torque(torque*delta*sin(time))
	add_force(torque*delta*-1000*sin(time)/100,torque*1000)
	print(sin(time))
