extends Panel


var count = 0

func _input(event):
	if event.is_action_pressed("ui_count") and get_node("/root/main/notes/mytext").readonly:
		count += 1
		get_node("count").text = "Count: " + str(count)
	if event is InputEventMouseButton:
		if event.get_button_index() == BUTTON_LEFT:
			if event.is_pressed():
				tick(event.position)

func tick(pos):
	var i = get_node("clickarea")
	var x1 = i.get_global_rect().position.x
	var y1 = i.get_global_rect().position.y
	var x2 = i.get_global_rect().position.x + i.rect_size.x
	var y2 = i.get_global_rect().position.y + i.rect_size.y
	if pos.x >= x1 and pos.x <= x2 and pos.y >= y1 and pos.y <= y2:
		print("reached")
		count += 1
		get_node("count").text = "Count: " + str(count)

func _on_reset_pressed():
	count = 0
	get_node("count").text = "Count: " + str(count)
