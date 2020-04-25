extends Spatial
export (PackedScene) var Cube
var cubeScene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var interface = ARVRServer.find_interface("OVRMobile")
	if interface and interface.initialize():
		# Tell our viewport it is the arvr viewport:
		get_viewport().arvr = true
	
		# change our physics fps
		Engine.target_fps = 72

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		_on_Player_handPinched("right_index")
	
func _on_Player_handPinched(_finger):
	var cube = Cube.instance()
	print($ObjectSpawn.translation)
	add_child(cube)	
	
	print("handPinched main function called.")
