extends StaticBody2D



var asteroid = preload("res://Scenes/Asteroid.tscn")
var asteroid_speed = 0.15
var life = 100
var enemy_radius = -500
var count_down = 200
var level = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	life = 100

func _physics_process(delta):
	count_down -= 1
	print(count_down)
	if count_down <= 0:
		throw_rock()
		if (level > 5):
			throw_rock()
		if (level > 10):
			throw_rock()
		
		
	if (life <= 10):
		print("Game Over!")

func _on_boddy_entered(body):
	life -= 10

func throw_rock():
	var degree = rand_range(0, 360)
	print(degree)
	count_down = 200
	var asteroidInstance = asteroid.instance()
	asteroidInstance.position.y = (sin(deg2rad(degree))*enemy_radius)
	asteroidInstance.position.x = (cos(deg2rad(degree))*enemy_radius)
	asteroidInstance.apply_central_impulse(Vector2(asteroidInstance.position*asteroid_speed*(-1)))
	get_tree().get_root().add_child(asteroidInstance)
