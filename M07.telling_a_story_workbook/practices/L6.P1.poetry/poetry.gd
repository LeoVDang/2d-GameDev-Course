extends ColorRect

@onready var rich_text_label: RichTextLabel = %RichTextLabel

var lines := """If you know
that 6 Hours of debugging
can save you 5 minutes
of reading documentation

If you try to automate
for 10 days
a task that needs 10 minutes

If you think, once again
that you can finish in 1 hour
a task that's always taken you 9

You'll be a gamedev, my student"""
var appearance_time := 1.0

func _ready() -> void:
	rich_text_label.text = lines
	rich_text_label.visible_ratio = 0.0
	var tween := create_tween()
	var text_appearing_duration := 1.0
	tween.tween_property(rich_text_label, "visible_ratio", 1.0, text_appearing_duration)
	
