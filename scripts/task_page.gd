extends Control

const TaskData = preload("res://scripts/task_items.gd")
const TaskItem = preload("res://scripts/task_item.gd")

@onready var task_data_instance = TaskData.new()
@onready var tasks = task_data_instance.get_task_items()
@onready var timer_progress_bar = $TimerProgress
@onready var display_task = $Labels/DisplayTask
@onready var time_label = $Labels/TimeLabel

var timer_duration : float
var elapsed_time : float = 0.0
var start : bool = false

func _ready() -> void:
	var selected_task = Global.selected_task
	
	display_task.text = selected_task.task_name
	timer_duration = float(selected_task.time_seconds)
	timer_progress_bar.max_value = 100  # Set to 100 for percentage progress
	timer_progress_bar.value = 0
	var milliseconds = int((timer_duration - int(timer_duration)) * 1000)
	time_label.text = "%d.%02ds" % [int(timer_duration), milliseconds]

func _process(delta: float) -> void:
	if start:
		if elapsed_time < timer_duration:
			elapsed_time += delta
			var progress = (elapsed_time / timer_duration) * 100.0
			timer_progress_bar.value = progress

			var remaining_time = timer_duration - elapsed_time
			var seconds = int(remaining_time)
			var milliseconds = int((remaining_time - seconds) * 1000)
			time_label.text = "%d.%03ds" % [seconds, milliseconds]
		else:
			time_label.text = "0.000s"
			$StartRandom.visible = false
			$finish.visible = true
			start = false

func _on_start_random_pressed() -> void:
	start = true


func _on_finish_pressed() -> void:
	$StartRandom.visible = true
	$finish.visible = false
	get_tree().change_scene_to_file("res://scenes/congratulation_page.tscn")
