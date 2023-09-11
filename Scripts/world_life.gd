extends StaticBody2D

var life = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	life = 100



func _on_boddy_entered(body):
	life -= 10
	if (life <= 10):
		print("Game Over!")
