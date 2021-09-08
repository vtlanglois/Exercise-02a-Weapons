extends Node2D


var speed = 0.5
var velocity = Vector2.ZERO

func _physics_process(_delta):
	velocity.y -= speed
	position += velocity.rotated(rotation)
	
