extends Control

#const TaskData = preload("res://scripts/task_items.gd")
#const TaskItem = preload("res://scripts/task_item.gd")
#
#@onready var task_data_instance = TaskData.new()
#@onready var tasks = task_data_instance.get_task_items()
#@onready var task_list = $TaskList  # Make sure the node is named exactly "TaskList"
#
#func _ready():
	## Populate the list with task descriptions
	#for task in tasks:
		#task_list.add_item(task.description)
#
#func _on_task_selected(index: int):
	#var selected_task: TaskItem = tasks[index]
	#print("Selected task:")
	#print(" - Description:", selected_task.description)
	#print(" - Duration:", selected_task.duration)
	#print(" - Category:", TaskItem.Category.keys()[selected_task.category])
	#print(" - Location:", TaskItem.Location.keys()[selected_task.location])
