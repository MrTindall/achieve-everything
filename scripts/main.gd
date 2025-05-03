extends Node

const TaskData = preload("res://scripts/task_items.gd")
const TaskItem = preload("res://scripts/task_item.gd")

@onready var task_data_instance = TaskData.new()
@onready var tasks = task_data_instance.get_task_items()

var selected_task

func _ready():
		
	for task in chore_tasks:
		print(task.task_name)
		


#func get_chores(tasks):
	#return tasks.filter(func(task): return task.category == TaskItem.Category.CHORES)
#
#func get_physical(tasks):
	#return tasks.filter(func(task): return task.category == TaskItem.Category.PHYSICAL)
	#
#func get_mental(tasks):
	#return tasks.filter(func(task): return task.category == TaskItem.Category.MENTAL)
	#
#func get_learning(tasks):
	#return tasks.filter(func(task): return task.category == TaskItem.Category.LEARNING)
	
func get_task_category(tasks, CATEGORY_SELECTED):
	return tasks.filter(func(task): return task.category == CATEGORY_SELECTED)
