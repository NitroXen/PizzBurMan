extends Node2D
class_name Respawn

@export var foods:Array[PackedScene]


func _on_food_timer_timeout() -> void:
	var type_food = foods[0]
	var food = type_food.instantiate()

	# Choose a random location on Path2D.
	var food_spawn_location = $Path2D/PathFollow2D
	food_spawn_location.progress_ratio = randf()

	# Set the mob's position to the random location.
	food.position = food_spawn_location.position

	# Set the mob's direction perpendicular to the path direction.
	var direction = food_spawn_location.rotation + PI / 2

	# Add some randomness to the direction.
	direction += randf_range(-PI / 4, PI / 4)
	food.rotation = direction

	# Choose the velocity for the mob.
	var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	food.linear_velocity = velocity.rotated(direction)

	# Spawn the mob by adding it to the Main scene.
	add_child(food)
