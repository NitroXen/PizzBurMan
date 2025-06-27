extends Node2D
class_name Attack

@export var MAX_ATTACK := 20
var attack :float

func _ready() -> void:
	attack = MAX_ATTACK
