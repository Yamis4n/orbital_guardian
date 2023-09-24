extends KinematicBody2D

var RADIUS
var degree
var projectile = preload("res://Scenes/Projectile.tscn")
export var projectile_speed = 10
var projectile_radius = -100



func _ready():
	degree = 90
	RADIUS = position.y
	position.y = (sin(degree)*RADIUS)
	position.x = (cos(degree)*RADIUS)
	

var can_fire = true

func _physics_process(delta):
	if (Input.is_action_pressed("move_reverse_clockwise")):
		degree -= 2
		rotation_degrees -= 2
		position.y = (sin(deg2rad(degree))*RADIUS)
		position.x = (cos(deg2rad(degree))*RADIUS)

	if (Input.is_action_pressed("move_clockwise")):
		degree += 2
		rotation_degrees += 2
		position.y = (sin(deg2rad(degree))*RADIUS)
		position.x = (cos(deg2rad(degree))*RADIUS)
	
	if (Input.is_action_just_pressed("fire")):
		var projectileInstance = projectile.instance()
		projectileInstance.position = $Fire_point.get_global_position()
		projectileInstance.rotation_degrees = rotation_degrees
		projectileInstance.apply_central_impulse(Vector2(position*projectile_speed))
		get_tree().get_root().add_child(projectileInstance)
		
		
		
		
