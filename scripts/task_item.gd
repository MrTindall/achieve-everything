# task_item.gd
extends RefCounted

enum Category { CHORES, PHYSICAL, MENTAL, LEARNING }
enum Location { HOME, WORK, SCHOOL, OTHER }

var task_name: String
var time_seconds: int
var category: Category
var location: Location

# Constructor to initialize task data
func _init(task_name: String, time_seconds: int, category: Category, location: Location):
	self.task_name = task_name
	self.time_seconds = time_seconds
	self.category = category
	self.location = location
