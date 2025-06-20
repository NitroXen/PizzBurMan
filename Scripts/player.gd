extends CharacterBody2D

@export var speed = 10000
var screen = get_viewport_rect().size

func _process(delta: float) -> void:
	var dir = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
	velocity = dir * speed * delta
	move_and_slide()
	
