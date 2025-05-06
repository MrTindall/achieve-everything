extends Control

const TaskData = preload("res://scripts/task_items.gd")
const TaskItem = preload("res://scripts/task_item.gd")

@onready var task_data_instance = TaskData.new()
@onready var tasks = task_data_instance.get_task_items()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var selected_task = Global.selected_task
	print(selected_task.to_dict())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
