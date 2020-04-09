extends Panel


var count = 0

func update():
	count += 1
	if count != 22:
		get_node("left").text = "Letters blotted: " + str(count) + "/22"
		get_node("finish").text = "Only " + str(22-count) + " to go!"
	else:
		get_node("left").text = "All 22 blotted! Final\ninstructions at the bottom!"
		get_node("finish").text = "When done, close this page!"


func _on_hide_pressed():
	if !visible:
		visible = true
		get_node("/root/main/hide").text = "hide"
	else:
		visible = false
		get_node("/root/main/hide").text = "show"
