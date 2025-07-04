extends RigidBody2D

func _ready() -> void:
	$Anim2D.play("burger")

func food_eating():
	$AnimationPlayer.play("Eating")
	queue_free()
