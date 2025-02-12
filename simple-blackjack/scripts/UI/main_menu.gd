extends Control

@onready var button_new_game = $MarginContainer/HBoxContainer/VBoxContainer/button_new_game
@onready var button_continue = $MarginContainer/HBoxContainer/VBoxContainer/button_continue
@onready var button_options = $MarginContainer/HBoxContainer/VBoxContainer/button_options
@onready var button_exit = $MarginContainer/HBoxContainer/VBoxContainer/button_exit
@onready var option_menu = $OptionMenu


func _ready():
	update_text()
	handle_connecting_signals()

func _on_button_new_game_pressed():
	get_tree().change_scene_to_file("res://scenes/game/game.tscn")

func _on_button_continue():
	get_tree().change_scene_to_file("res://scenes/game/game.tscn")

func _on_button_options():
	get_tree().change_scene_to_file("res://scenes/UI/option_menu.tscn")

func _on_button_exit():
	get_tree().quit()

func _on_back_option_menu():
	pass

# Signals handler
func handle_connecting_signals():
	button_new_game.pressed.connect(_on_button_new_game_pressed)
	button_continue.pressed.connect(_on_button_continue)
	button_options.pressed.connect(_on_button_options)
	button_exit.pressed.connect(_on_button_exit)
	option_menu.back_option_menu.connect(_on_back_option_menu)

# Updates button texts depending on language
func update_text():
	button_new_game.text = tr("new_game")
	button_continue.text = tr("continue")
	button_options.text = tr("options")
	button_exit.text = tr("exit")

# Changes the game language and updates button texts accordingly
func set_language(lang: String):
	TranslationServer.set_locale(lang)
	update_text()
