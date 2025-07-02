extends Node2D
class_name Respawn

@export var good_food: PackedScene
@export var bad_food: PackedScene
@export var antiacid : PackedScene


func _on_food_timer_timeout() -> void:
	var food = good_food.instantiate()
	add_child(food)
