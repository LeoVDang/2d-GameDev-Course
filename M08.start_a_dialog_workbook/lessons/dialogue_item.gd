@tool

@icon("res://assets/dialogue_item_icon.svg")

class_name Dialogueitem extends SlideShowEntry

@export_group("Choices")
@export var choices: Array[DialogueChoice] = []: set = set_choices

func set_choices(new_choices: Array[DialogueChoice]) -> void:
	for index in new_choices.size():
		if new_choices[index] == null:
			new_choices[index] = DialogueChoice.new()
	choices = new_choices
	
var dialogue_items:Array[Dictionary] = [
	{
		"choices":[
	{
			"text":"Let me sleep a little longer",
			"target_line_idx": 2,
	},
	{
			"text":"Let's do it!",
			"target_line_idx": 1,
	},
	{
			"text":"Go away!",
			"is_quit": true
	},
	]
	},
]
