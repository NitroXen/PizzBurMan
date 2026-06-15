extends RigidBody2D

var foods = ["burger", "pizza"];

func _ready() -> void:
	var rand = randi()%2
	if (rand==1):
		$Anim2D.play(foods[0])
	else:
		$Anim2D.play(foods[1])

func food_eating():
	$AnimationPlayer.play("Eating")
	queue_free()
