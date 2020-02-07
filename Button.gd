extends Button


func _ready():
	hide()
	


func _on_Planter_mouse_entered():
	show()
	print("yay");
	set_position(Vector2(get_global_mouse_position().x - 22, get_global_mouse_position().y - 10))


func _on_Planter_mouse_exited():
	hide()
	
