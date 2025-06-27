extends Node2D
class_name Health

@export var MAX_HEALTH := 100
var health: float

func _ready() -> void:
	health = MAX_HEALTH

func damage(hit:Attack):
	health -= hit.attack
