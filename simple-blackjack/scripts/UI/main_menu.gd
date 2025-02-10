extends Control

@onready var button_new_game = $buttons_container/button_new_game
@onready var button_continue = $buttons_container/button_continue
@onready var button_options = $buttons_container/button_options
@onready var button_exit = $buttons_container/button_exit

func _ready():
	update_text()

# Updates button texts depending on language
func update_text():
	get_tree().call_group("buttons", "update_text")

# Changes the game language and updates button texts accordingly
func set_language(lang: String):
	TranslationServer.set_locale(lang)
	update_text()
