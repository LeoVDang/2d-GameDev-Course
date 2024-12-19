class_name Dialogueitem extends SlideShowEntry

@export var choices: Array[DialogueChoice] = []

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
