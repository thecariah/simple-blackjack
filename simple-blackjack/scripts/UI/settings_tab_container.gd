extends Control

@onready var tab_container = $TabContainer

func _ready():
	update_tab_titles()
	Global.language_changed.connect(update_tab_titles)

# Updates the name of the settings tabs
func update_tab_titles():
	tab_container.set_tab_title(0, tr("sound"))
	tab_container.set_tab_title(1, tr("language"))
