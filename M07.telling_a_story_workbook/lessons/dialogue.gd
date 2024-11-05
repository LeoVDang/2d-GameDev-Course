extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton

var current_item_index := 0

var character_name:= "Sophia"

var letters_list := ["a","b","c"]

var letter: String = letters_list[0]

func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item

func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
	
func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)

var dialogue_items: Array[String] = [
	"Roses are red",
	"Violets are blue",
	"i'm learning about Arrays",
	"And so are you!",
]
