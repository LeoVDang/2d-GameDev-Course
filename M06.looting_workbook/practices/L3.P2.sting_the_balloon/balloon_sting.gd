extends Area2D

@onready var canvas_group: CanvasGroup = $CanvasGroup


func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	queue_free()
	

	
func _on_mouse_entered() -> void:
	var tween := create_tween()



func _on_mouse_exited():
	var tween := create_tween()

