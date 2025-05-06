extends RefCounted
const TaskItem = preload("res://scripts/task_item.gd")  # Preload the TaskItem class

func get_task_items():
	return task_items_array

var task_items_array = [
	# CHORES
	TaskItem.new("Wipe the desk", 10, TaskItem.Category.CHORES, TaskItem.Location.HOME),
	TaskItem.new("Organize your backpack", 30, TaskItem.Category.CHORES, TaskItem.Location.HOME),
	TaskItem.new("Sort pantry shelf", 60, TaskItem.Category.CHORES, TaskItem.Location.HOME),

	TaskItem.new("Arrange keyboard and mouse", 10, TaskItem.Category.CHORES, TaskItem.Location.WORK),
	TaskItem.new("Tidy cable mess", 30, TaskItem.Category.CHORES, TaskItem.Location.WORK),
	TaskItem.new("Organize documents", 60, TaskItem.Category.CHORES, TaskItem.Location.WORK),

	TaskItem.new("Clean locker door", 10, TaskItem.Category.CHORES, TaskItem.Location.SCHOOL),
	TaskItem.new("Straighten notebooks", 30, TaskItem.Category.CHORES, TaskItem.Location.SCHOOL),
	TaskItem.new("Sort art supplies", 60, TaskItem.Category.CHORES, TaskItem.Location.SCHOOL),

	TaskItem.new("Clear clutter from bag", 10, TaskItem.Category.CHORES, TaskItem.Location.OTHER),
	TaskItem.new("Tidy phone apps", 30, TaskItem.Category.CHORES, TaskItem.Location.OTHER),
	TaskItem.new("Clean water bottle", 60, TaskItem.Category.CHORES, TaskItem.Location.OTHER),

	# PHYSICAL
	TaskItem.new("Do 5 jumping jacks", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.HOME),
	TaskItem.new("Stretch neck and shoulders", 30, TaskItem.Category.PHYSICAL, TaskItem.Location.HOME),
	TaskItem.new("Walk in place", 60, TaskItem.Category.PHYSICAL, TaskItem.Location.HOME),

	TaskItem.new("Stand and touch toes", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.WORK),
	TaskItem.new("Office chair twists", 30, TaskItem.Category.PHYSICAL, TaskItem.Location.WORK),
	TaskItem.new("Walk around building", 60, TaskItem.Category.PHYSICAL, TaskItem.Location.WORK),

	TaskItem.new("Wrist and finger stretches", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Raise arms overhead", 30, TaskItem.Category.PHYSICAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Do a slow squat", 60, TaskItem.Category.PHYSICAL, TaskItem.Location.SCHOOL),

	TaskItem.new("Spin once on the spot", 10, TaskItem.Category.PHYSICAL, TaskItem.Location.OTHER),
	TaskItem.new("Light jog in place", 30, TaskItem.Category.PHYSICAL, TaskItem.Location.OTHER),
	TaskItem.new("Balance on one foot", 60, TaskItem.Category.PHYSICAL, TaskItem.Location.OTHER),


	# MENTAL
	TaskItem.new("List 3 favorite songs", 10, TaskItem.Category.MENTAL, TaskItem.Location.HOME),
	TaskItem.new("Describe yesterday’s dinner", 30, TaskItem.Category.MENTAL, TaskItem.Location.HOME),
	TaskItem.new("Imagine a new animal", 60, TaskItem.Category.MENTAL, TaskItem.Location.HOME),

	TaskItem.new("Name 3 coworkers", 10, TaskItem.Category.MENTAL, TaskItem.Location.WORK),
	TaskItem.new("Visualize your commute", 30, TaskItem.Category.MENTAL, TaskItem.Location.WORK),
	TaskItem.new("Plan next week's tasks", 60, TaskItem.Category.MENTAL, TaskItem.Location.WORK),

	TaskItem.new("Think of 3 math facts", 10, TaskItem.Category.MENTAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Recall a lesson", 30, TaskItem.Category.MENTAL, TaskItem.Location.SCHOOL),
	TaskItem.new("Design a quiz question", 60, TaskItem.Category.MENTAL, TaskItem.Location.SCHOOL),

	TaskItem.new("Name 3 nearby objects", 10, TaskItem.Category.MENTAL, TaskItem.Location.OTHER),
	TaskItem.new("Recount a dream", 30, TaskItem.Category.MENTAL, TaskItem.Location.OTHER),
	TaskItem.new("Make a silly poem", 60, TaskItem.Category.MENTAL, TaskItem.Location.OTHER),

	# LEARNING
	TaskItem.new("Learn a new word", 10, TaskItem.Category.LEARNING, TaskItem.Location.HOME),
	TaskItem.new("Read a short fact", 30, TaskItem.Category.LEARNING, TaskItem.Location.HOME),
	TaskItem.new("Try to write a haiku", 60, TaskItem.Category.LEARNING, TaskItem.Location.HOME),

	TaskItem.new("Sketch a tiny chart", 10, TaskItem.Category.LEARNING, TaskItem.Location.WORK),
	TaskItem.new("Summarize a blog post", 30, TaskItem.Category.LEARNING, TaskItem.Location.WORK),
	TaskItem.new("Re-explain a task", 60, TaskItem.Category.LEARNING, TaskItem.Location.WORK),

	TaskItem.new("Spell a hard word", 10, TaskItem.Category.LEARNING, TaskItem.Location.SCHOOL),
	TaskItem.new("Repeat a definition", 30, TaskItem.Category.LEARNING, TaskItem.Location.SCHOOL),
	TaskItem.new("Explain a topic to self", 60, TaskItem.Category.LEARNING, TaskItem.Location.SCHOOL),

	TaskItem.new("Read a quote", 10, TaskItem.Category.LEARNING, TaskItem.Location.OTHER),
	TaskItem.new("Google a fun fact", 30, TaskItem.Category.LEARNING, TaskItem.Location.OTHER),
	TaskItem.new("Invent a science term", 60, TaskItem.Category.LEARNING, TaskItem.Location.OTHER)
]
