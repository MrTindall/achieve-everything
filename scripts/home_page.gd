extends Control

func _ready() -> void:
	pass

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/achievement_page.tscn")
