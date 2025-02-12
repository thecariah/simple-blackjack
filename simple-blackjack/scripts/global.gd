extends Node

var default_language: String = "en"
signal language_changed

func _ready():
	TranslationServer.set_locale(default_language)

# Changes the game language
func set_language(lang: String):
	default_language = lang
	TranslationServer.set_locale(lang)
	emit_signal("language_changed")
