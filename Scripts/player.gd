extends Area2D

@export var speed = 200
@export var dash_duration = 0.5


var is_dashing = false
var dash_direction = Vector2.ZERO
var dash_timer = 0.0
var dir = Vector2.ZERO
var vel = Vector2.ZERO


func _physics_process(delta: float) -> void:
	dir = Input.get_vector("left","right","up","down")
	if dir.length() > 0:
		dir = dir.normalized()
	if is_dashing:
		dash_timer += delta
		vel = dash_direction * 600
		$AnimationPlayer.play("move_dash")
		if dash_timer > dash_duration:
			dash_timer = 0.0
			is_dashing = false
			vel = Vector2.ZERO
	else:
		vel = dir * speed
	position += vel*delta
	position = position.clamp(Vector2.ZERO, get_viewport_rect().size)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("dash") and dir != Vector2.ZERO:
		is_dashing = true
		dash_direction = Input.get_vector("left", "right", "up", "down")
		if dash_direction.length() == 0:
			dash_direction = Vector2.ZERO # Default to up if no direction is pressed
		dash_direction = dash_direction.normalized()

#func dash():
	#$AnimationPlayer.play("move_dash")
	#var tween = get_tree().create_tween()
	#tween.tween_property(self, "position", position + velocity * 1.5 ,0.5)
	#await tween.finished
	
