extends Panel


var down = false
var up = false

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			move(event.position)
		else:
			down = false
			up = false

func move(pos):
	for i in get_children():
		if i.get_class() != "Sprite":
			continue
		var size = 100
		var x1 = i.global_position.x - size/2
		var y1 = i.global_position.y - size/2
		var x2 = i.global_position.x + size/2
		var y2 = i.global_position.y + size/2
		if pos.x >= x1 and pos.x <= x2 and pos.y >= y1 and pos.y <= y2:
			if i.get_name() == "down":
				up = false
				down = true
			else:
				down = false
				up = true
			break
