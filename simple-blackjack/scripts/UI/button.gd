extends Button

@export var action: String

func _ready():
	update_text()
	pressed.connect(_on_pressed)

func _on_pressed():
	match action:
		"new_game":
			get_tree().change_scene_to_file("res://scenes/game/game.tscn")
		"continue":
			# cambiar
			get_tree().change_scene_to_file("res://scenes/game/game.tscn")
		"options":
			# cambiar
			get_tree().change_scene_to_file("res://scenes/game/game.tscn")
		"exit":
			get_tree().quit()

func update_text():
	text = tr(action)
