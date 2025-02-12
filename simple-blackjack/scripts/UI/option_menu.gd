extends Control

@onready var button_back = $MarginContainer/VBoxContainer/button_back
signal back_option_menu

func _ready() -> void:
	button_back.pressed.connect(_on_pressed)
	set_process(false)

func _on_pressed():
	back_option_menu.emit()
	set_process(false)
