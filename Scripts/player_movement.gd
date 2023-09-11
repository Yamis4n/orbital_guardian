extends KinematicBody2D

var RADIUS
var degree

func _ready():
	degree = 90
	RADIUS = position.y
	position.y = (sin(degree)*RADIUS)
	position.x = (cos(degree)*RADIUS)
	



func _physics_process(delta):
	if (Input.is_action_pressed("move_reverse_clockwise")):
		degree -= 2
		rotation_degrees -= 2

	if (Input.is_action_pressed("move_clockwise")):
		degree += 2
		rotation_degrees += 2

	
	
		
	position.y = (sin(deg2rad(degree))*RADIUS)
	position.x = (cos(deg2rad(degree))*RADIUS)
	
