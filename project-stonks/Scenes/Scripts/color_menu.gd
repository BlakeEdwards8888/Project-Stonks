extends NinePatchRect

var self_opened = false;

@onready var button1 = $VBoxContainer/CheckButton1
@onready var button2 = $VBoxContainer/CheckButton2
@onready var button3 = $VBoxContainer/CheckButton3

@onready var background_color = get_parent().get_node("BackgroundColor")

func _input(event):
	if event.is_action_pressed("ui_accept"):
		toggle_menu()
		
func toggle_menu():
	self_opened = !self_opened
	self.visible = self_opened


func _on_check_button_1_pressed() -> void:
	handle_button_press("1")


func _on_check_button_2_pressed() -> void:
	handle_button_press("2")


func _on_check_button_3_pressed() -> void:
	handle_button_press("3")
	
func handle_button_press(button):
	var color1 = $GridContainer/Panel1/ColorRect.color
	var color2 = $GridContainer/Panel4/ColorRect.color
	var color3 = $GridContainer/Panel7/ColorRect.color
	
	if button == "1":
		background_color.color = color1
		button2.set_pressed_no_signal(false)
		button3.set_pressed_no_signal(false)
	if button == "2":
		background_color.color = color2
		button1.set_pressed_no_signal(false)
		button3.set_pressed_no_signal(false)
	if button == "3":
		background_color.color = color3
		button2.set_pressed_no_signal(false)
		button1.set_pressed_no_signal(false)
