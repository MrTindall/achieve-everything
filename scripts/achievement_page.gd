extends Control

const TaskData = preload("res://scripts/task_items.gd")
const TaskItem = preload("res://scripts/task_item.gd")

@onready var task_data_instance = TaskData.new()
@onready var tasks = task_data_instance.get_task_items()
@onready var location = $Options/Location
@onready var category = $Options/Category
@onready var time = $Options/Time

var location_selected
var category_selected
var time_selected


func _ready():
	var chore_list = get_task_category(tasks, TaskItem.Category.CHORES)
	var physical_list = get_task_category(tasks, TaskItem.Category.PHYSICAL)
	var mental_list = get_task_category(tasks, TaskItem.Category.MENTAL)
	var learning_list = get_task_category(tasks, TaskItem.Category.LEARNING)
	
	var home_list = get_task_location(tasks, TaskItem.Location.HOME)
	var work_list = get_task_location(tasks, TaskItem.Location.WORK)
	var school_list = get_task_location(tasks, TaskItem.Location.SCHOOL)
	var other_list = get_task_location(tasks, TaskItem.Location.OTHER)
	
	randomize()
	
	# gets the selector values
	add_selected_categories(tasks)
	add_selected_locations(tasks)
	add_selected_time(tasks)
	
	# sets value to selected option on startup
	category_selected = category.get_selected_id()
	location_selected = location.get_selected_id()
	time_selected = time.get_selected_id()
	
func _process(delta: float) -> void:
	pass

# returns array of that selected enum for category
func get_task_category(tasks, CATEGORY_SELECTED):
	return tasks.filter(func(task): return task.category == CATEGORY_SELECTED)
	
# returns array of that selected enum for location
func get_task_location(tasks, LOCATION_SELECTED):
	return tasks.filter(func(task): return task.location == LOCATION_SELECTED)

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

# add int values to the selector options for time
func add_selected_time(activity_list):
	var unique_times := []
	for activity in activity_list:
		if activity.time_seconds not in unique_times:
			unique_times.append(activity.time_seconds)

	time.clear()

	for seconds in unique_times:
		var label = str(seconds) + "'s"
		time.add_item(label, seconds)

# gets a random activity based on the selected variables
func get_random_activity(location_selected, category_selected, time_selected):
	var filtered_tasks = tasks.filter(func(task): return task.location == location_selected)
	filtered_tasks = filtered_tasks.filter(func(task): return task.category == category_selected)
	filtered_tasks = filtered_tasks.filter(func(task): return task.time_seconds == time_selected)
	return filtered_tasks
	
# sets option buttons to seleted values
func _on_location_item_selected(index: int) -> void:
	location_selected = index
	
func _on_category_item_selected(index: int) -> void:
	category_selected = index
	
func _on_time_item_selected(index: int) -> void:
	time_selected = time.get_item_id(index)
	
# randomly selects a task from the filtered list
func _on_start_focused_pressed() -> void:
	var filtered_tasks = get_random_activity(location_selected, category_selected, time_selected)
	if filtered_tasks.size() > 0:
		var random_index = randi() % filtered_tasks.size()
		var random_task = filtered_tasks[random_index]
		Global.selected_task = random_task
		get_tree().change_scene_to_file("res://scenes/task_page.tscn")

# randomly selects a task from the entire list
func _on_start_random_pressed() -> void:
	if tasks.size() > 0:
		var random_index = randi() % tasks.size()
		var random_task =  tasks[random_index]
		Global.selected_task = random_task
		get_tree().change_scene_to_file("res://scenes/task_page.tscn")
