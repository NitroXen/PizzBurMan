extends RigidBody2D

var foods = ["res://assets/Burger.svg","res://assets/Pizza.svg"]

@onready var x_pos = randf_range(-1,1)
@onready var y_pos = randf_range(-1,1)

func _ready() -> void:
	
	if randi_range(0,2) == 0:
		$Sprite2D.texture = foods[0]
	else:
		$Sprite2D.texture = foods[1]

func _process(delta: float) -> void:
	position.x += x_pos
	position.y += y_pos
