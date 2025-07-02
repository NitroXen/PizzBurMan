extends Node2D



func _on_player_area_entered(area: Area2D) -> void:
	area.queue_free()
