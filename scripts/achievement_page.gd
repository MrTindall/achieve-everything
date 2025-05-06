extends Control

const TaskData = preload("res://scripts/task_items.gd")
const TaskItem = preload("res://scripts/task_item.gd")

@onready var task_data_instance = TaskData.new()
@onready var tasks = task_data_instance.get_task_items()
@onready var location = $Location
@onready var category = $Category
@onready var time = $Time

var location_selected
var category_selected
var time_selected

func _ready():
	var chore_list = get_task_category(tasks, TaskItem.Category.CHORES)
	var physical_list = get_task_category(tasks, TaskItem.Category.PHYSICAL)
	var mental_list = get_task_category(tasks, TaskItem.Category.MENTAL)
	var learning_list = get_task_category(tasks, TaskItem.Category.LEARNING)
	
	var home_list = get_task_category(tasks, TaskItem.Location.HOME)
	var work_list = get_task_category(tasks, TaskItem.Location.WORK)
	var school_list = get_task_category(tasks, TaskItem.Location.SCHOOL)
	var other_list = get_task_category(tasks, TaskItem.Location.OTHER)
	
	# gets the selector values
	add_selected_categories(tasks)
	add_selected_locations(tasks)
	
	# sets value to selected option on startup
	category_selected = category.get_selected_id()
	location_selected = location.get_selected_id()
	
func _process(delta: float) -> void:
	print(category_selected)

# returns array of that selected enum for category
func get_task_category(tasks, CATEGORY_SELECTED):
	return tasks.filter(func(task): return task.category == CATEGORY_SELECTED)
	
# returns array of that selected enum for location
func get_task_location(tasks, LOCATION_SELECTED):
	return tasks.filter(func(task): return task.Location == LOCATION_SELECTED)

# add enum values to selector options for category
func add_selected_categories(activity_list):
	var unique_categories := []
	for activity in activity_list:
		if activity.category not in unique_categories:
			unique_categories.append(activity.category)

	category.clear()
	
	for cat in unique_categories:
		var name = TaskItem.Category.keys()[cat]
		category.add_item(name, cat)
		
# add enum values to selector options for locations
func add_selected_locations(activity_list):
	var unique_locations := []
	for activity in activity_list:
		if activity.location not in unique_locations:
			unique_locations.append(activity.location)

	location.clear()
	
	for loc in unique_locations:
		var name = TaskItem.Location.keys()[loc]
		location.add_item(name, loc)

# sets option buttons to seleted values
func _on_location_item_selected(index: int) -> void:
	location_selected = index
	
func _on_category_item_selected(index: int) -> void:
	category_selected = index
	
