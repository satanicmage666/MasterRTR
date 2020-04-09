extends CanvasLayer


var origPos = []
var origName = []

func _ready():
	for i in get_children():
		i.connect("pressed", self, "_on_Button_button_up",[i])
		origPos.insert(origPos.size(), i.rect_position)
		origName.insert(origName.size(), i.get_name())

func _process(delta):
	for i in get_children():
		i.rect_position.y = origPos[origName.find(i.get_name())].y - get_node("/root/main/scrollarea").scroll_vertical

func _on_Button_button_up(which):
	for i in get_node("/root/main/pron_tracks").get_children():
		i.playing = false
	var track = which.get_name().replace("say", "track")
	for i in get_node("/root/main/pron_tracks").get_children():
		if i.get_name() == track:
			i.play(0)
			break
