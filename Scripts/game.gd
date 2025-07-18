extends Node

func _process(delta: float) -> void:
	$Label.text = "Puntos: %d" % Autoload.puntuacion


func _on_eating_timer_timeout() -> void:
	pass # Replace with function body.
