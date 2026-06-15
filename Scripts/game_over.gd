extends Control

func _ready():
	%Label.text = "Game over
Tu puntuacion es : %d" % Autoload.puntuacion

func _on_button_pressed() -> void:
	Autoload.puntuacion = 0
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
