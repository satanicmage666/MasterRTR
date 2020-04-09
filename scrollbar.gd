extends VBoxContainer


func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			blot(event.position)

func blot(pos):
	for i in get_children():
		if i.get_name().find("blot") < 0:
			return
		var x1 = i.rect_position.x
		var y1 = i.rect_position.y
		var x2 = i.rect_position.x + i.rect_size.x
		var y2 = i.rect_position.y + i.rect_size.y
		if pos.x >= x1 and pos.x <= x2 and pos.y >= y1 and pos.y <= y2:
			if !i.visible:
				get_node("/root/main/done").update()
			i.visible = true
			break
