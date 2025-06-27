extends Node2D
class_name Hitbox

@export var health : Health

func damage(atk: Attack):
	if health:
		health.damage(atk)
