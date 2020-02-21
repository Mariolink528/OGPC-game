extends Button

var menu = 0;
func _ready():
	hide()
	


func _on_Planter_mouse_entered():
	if menu == 0:
		show()
		print("yay");
		set_position(Vector2(get_global_mouse_position().x - 22, get_global_mouse_position().y - 10))


func _on_Planter_mouse_exited():
	hide()
	


func _on_Button_pressed():
	hide()
	menu = 1;




func _on_Exit_pressed():
	menu = 0;
