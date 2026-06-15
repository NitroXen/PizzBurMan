extends RigidBody2D

func _ready() -> void:
	var rand = randi()%2
	if (rand==1):
		$Anim2D.play("BurgerMal")
	else:
		$Anim2D.play("PizzaMal")

func bad_food_eating():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
