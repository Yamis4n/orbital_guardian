extends Node


var asteroid = preload("res://Scenes/Asteroid1.tscn")
var instance1 


func _ready():
	instance1 = asteroid.instance()
	add_child(instance1)
	

