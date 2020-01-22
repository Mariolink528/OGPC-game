extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	


func _on_Planter_mouse_entered():
	show()
	print("yay");
	set_position(Vector2(get_global_mouse_position().x, get_global_mouse_position().y))


func _on_Planter_mouse_exited():
	hide()
	
