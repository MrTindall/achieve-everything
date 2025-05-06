extends Node

@onready var HomePage = preload("res://scenes/home_page.tscn")

func _ready() -> void:
	call_deferred("_go_to_home")

func _go_to_home():
	get_tree().change_scene_to_packed(HomePage)
