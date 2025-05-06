extends RefCounted
const TaskItem = preload("res://scripts/task_item.gd")  # Preload the TaskItem class

func get_task_items():
	return task_items_array

var task_items_array = [
	# CHORES
	TaskItem.new("Wipe desk", 10, TaskItem.Category.CHORES, TaskItem.Location.HOME),
	TaskItem.new("Sort papers", 30, TaskItem.Category.CHORES, TaskItem.Location.WORK),
	TaskItem.new("Organize locker", 60, TaskItem.Category.CHORES, TaskItem.Location.SCHOOL),
	TaskItem.new("Tidy up supplies", 10, TaskItem.Category.CHORES, TaskItem.Location.OTHER),

	# PHYSICAL
	TaskItem.new("Do 5 jumping jacks", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.HOME),
	TaskItem.new("Walk a hallway", 30, TaskItem.Category.PHYSICAL, TaskItem.Location.WORK),
	TaskItem.new("Stretch arms and legs", 60, TaskItem.Category.PHYSICAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Run in place", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.OTHER),

	# MENTAL
	TaskItem.new("List 3 favorite books", 10, TaskItem.Category.MENTAL, TaskItem.Location.HOME),
	TaskItem.new("Recall last meeting points", 30, TaskItem.Category.MENTAL, TaskItem.Location.WORK),
	TaskItem.new("Mentally solve a puzzle", 60, TaskItem.Category.MENTAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Think of a riddle", 10, TaskItem.Category.MENTAL, TaskItem.Location.OTHER),

	# LEARNING
	TaskItem.new("Define a new word", 10, TaskItem.Category.LEARNING, TaskItem.Location.HOME),
	TaskItem.new("Sketch a quick diagram", 30, TaskItem.Category.LEARNING, TaskItem.Location.WORK),
	TaskItem.new("Recite a fact you learned", 60, TaskItem.Category.LEARNING, TaskItem.Location.SCHOOL),
	TaskItem.new("Read a short quote", 10, TaskItem.Category.LEARNING, TaskItem.Location.OTHER)
]
