extends CharacterBody2D

@export var speed = 10000
var dir = Vector2.ZERO

func _physics_process(delta: float) -> void:
	dir = Input.get_vector("left","right","up","down")
	dir = dir.normalized()
	velocity = dir * speed * delta
	if Input.is_action_just_pressed("dash"):
		dash()
	print(dir)
	move_and_slide()

func dash():
	$AnimationPlayer.play("move_dash")
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", position + velocity * 1.5 ,0.5)
	await tween.finished
	
