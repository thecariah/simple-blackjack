extends Control

@onready var button_back = $MarginContainer/VBoxContainer/button_back
@onready var label_title = $MarginContainer/VBoxContainer/Label
signal back_option_menu

func _ready() -> void:
	button_back.pressed.connect(_on_pressed)
	set_process(false)
	Global.language_changed.connect(update_text)
	update_text()

func _on_pressed():
	back_option_menu.emit()
	set_process(false)

# Updates texts by language
func update_text():
	button_back.text = tr("back")
	label_title.text = tr("options")
