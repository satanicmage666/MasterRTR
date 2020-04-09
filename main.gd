extends Node2D


func _ready():
	pass
	

var scrollRate = 5

func _process(_delta):
	if !get_node("/root/main/notes/mytext").readonly:
		return
	if Input.is_action_pressed("ui_down") or get_node("arrows").down:
		get_node("/root/main/scrollarea").scroll_vertical += scrollRate
	elif Input.is_action_pressed("ui_up") or get_node("arrows").up:
		get_node("/root/main/scrollarea").scroll_vertical -= scrollRate
