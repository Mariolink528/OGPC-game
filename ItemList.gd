extends ItemList

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	show()
	print("YES")



func _on_ItemList_item_activated(index):
	if Itemlist.get_item_text():
		hide()
