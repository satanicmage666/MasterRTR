extends CanvasLayer


var origPos = []
var origName = []

func _ready():
	for i in get_children():
		origPos.insert(origPos.size(), i.rect_position)
		origName.insert(origName.size(), i.get_name())


func _process(delta):
	for i in get_children():
		i.rect_position.y = origPos[origName.find(i.get_name())].y - get_node("/root/main/scrollarea").scroll_vertical

func _input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == BUTTON_LEFT:
			if event.is_pressed():
				blot(event.position)

func blot(pos):
	for i in get_children():
		var x1 = i.rect_position.x
		var y1 = i.rect_position.y
		var x2 = i.rect_position.x + i.rect_size.x
		var y2 = i.rect_position.y + i.rect_size.y
		if pos.x >= x1 and pos.x <= x2 and pos.y >= y1 and pos.y <= y2:
			if !i.visible:
				get_node("/root/main/done").update()
			i.visible = true
			break
