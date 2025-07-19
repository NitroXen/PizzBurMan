extends Node

func _process(delta: float) -> void:
	if Autoload.puntuacion>0:
		$Info.hide()
	$Timer.text = str(int($EatingTimer.time_left))
	$Label.text = "Puntos: %d" % Autoload.puntuacion
	


func _on_eating_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
