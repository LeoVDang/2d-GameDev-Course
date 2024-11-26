extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton
@onready var audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer
@onready var body: TextureRect = %Body
@onready var expression: TextureRect = %Expression

var expressions := {
"happy": preload("res://assets/emotion_happy.png"),
"regular": preload("res://assets/emotion_regular.png"),
"sad": preload("res://assets/emotion_sad.png"),
}

var current_item_index := 0

var character_name:= "Sophia"

var letters_list := ["a","b","c"]

var letter: String = letters_list[0]

func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item["text"]
	expression.texture = current_item["expression"]
	rich_text_label.visible_ratio = 0.0
	var tween := create_tween()
	var text_appearing_duration := 1.2
	tween.tween_property(rich_text_label, "visible_ratio", 1.0, text_appearing_duration)
	tween.finished.connect(audio_stream_player.stop)
	var sound_max_length := audio_stream_player.stream.get_length() - text_appearing_duration
	var sound_start_position := randf() * sound_max_length
	audio_stream_player.play(sound_start_position)

func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
	
func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)

var dialogue_items: Array[Dictionary] = [
{
			"expression": expressions["regular"],
			"text":"I'm learning about Arrays..."
},
{
			"expression": expressions["sad"],
			"text": "... and it is a little bit complicated."
},
{
			"expression": expressions["happy"],
			"text": "Let's see if I got it right: an array is a list of values!",
},
{
			"expression": expressions["regular"],
			"text": "Did I get it right? Did I?",
},
{
			"expression": expressions["happy"],
			"text": "Hehe! Bye Bye~!",
}
]
