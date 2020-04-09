extends Panel


#func _process(delta):
#	if get_node("mytext").text.find("\\") >= 0:
#		get_node("mytext").text = get_node("mytext").text.replace("\\", "")

func _input(event):
#	if event.is_action_pressed("ui_type"):
#		get_node("mytext").readonly = !get_node("mytext").readonly
#		if get_node("mytext").readonly:
#			get_node("info").visible = true
#			get_node("info2").visible = false
#		else:
#			get_node("mytext").grab_focus()
#			get_node("info2").visible = true
#			get_node("info").visible = false
	if event is InputEventMouseButton:
		if event.get_button_index() == BUTTON_LEFT:
			if event.is_pressed():
				stopTyping(event.position)


func _on_mytext_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == BUTTON_LEFT:
			if event.is_pressed():
				if get_node("mytext").text == "Click to start typing...":
					get_node("mytext").text = ""
				get_node("mytext").readonly = false
				get_node("mytext").grab_focus()
				#get_node("info2").visible = true
				#get_node("info").visible = false

func stopTyping(pos):
	var i = get_node("mytext")
	var x1 = i.rect_position.x
	var y1 = i.rect_position.y
	var x2 = i.rect_position.x + i.rect_size.x
	var y2 = i.rect_position.y + i.rect_size.y
	if !(pos.x >= x1 and pos.x <= x2 and pos.y >= y1 and pos.y <= y2):
		if get_node("mytext").text == "":
			get_node("mytext").text = "Click to start typing..."
		get_node("mytext").readonly = true
		#get_node("info").visible = true
		#get_node("info2").visible = false
