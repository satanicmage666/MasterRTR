extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_check_toggled(button_pressed):
	if get_node("/root/main/scrollarea/scrollbar/black").visible:
		get_node("/root/main/scrollarea/scrollbar/black").visible = false
		get_node("/root/main/scrollarea/scrollbar/white").visible = true
	else:
		get_node("/root/main/scrollarea/scrollbar/white").visible = false
		get_node("/root/main/scrollarea/scrollbar/black").visible = true
