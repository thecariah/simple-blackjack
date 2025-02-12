extends Control

@onready var button_new_game = $MarginContainer/HBoxContainer/VBoxContainer/button_new_game
@onready var button_continue = $MarginContainer/HBoxContainer/VBoxContainer/button_continue
@onready var button_options = $MarginContainer/HBoxContainer/VBoxContainer/button_options
@onready var button_exit = $MarginContainer/HBoxContainer/VBoxContainer/button_exit
@onready var margin_container = $MarginContainer
@onready var option_menu = $OptionMenu


func _ready():
	update_text()
	handle_connecting_signals()
	Global.language_changed.connect(update_text)

func _on_button_new_game_pressed():
	get_tree().change_scene_to_file("res://scenes/game/game.tscn")

func _on_button_continue_pressed():
	get_tree().change_scene_to_file("res://scenes/game/game.tscn")

func _on_button_options_pressed():
	# hide the main menu
	margin_container.visible = false
	# show the option menu
	option_menu.set_process(true)
	option_menu.visible = true

func _on_button_exit_pressed():
	get_tree().quit()

func _on_back_option_menu():
	# hide the option menu
	option_menu.visible = false
	# show the main menu again
	margin_container.visible = true

# Signals handler
func handle_connecting_signals():
	button_new_game.pressed.connect(_on_button_new_game_pressed)
	button_continue.pressed.connect(_on_button_continue_pressed)
	button_options.pressed.connect(_on_button_options_pressed)
	button_exit.pressed.connect(_on_button_exit_pressed)
	option_menu.back_option_menu.connect(_on_back_option_menu)

# Updates button texts depending on language
func update_text():
	button_new_game.text = tr("new_game")
	button_continue.text = tr("continue")
	button_options.text = tr("options")
	button_exit.text = tr("exit")
