class_name CardData
extends Resource

@export var value: String
@export var type: String
@export var points: int

func get_card_name() -> String:
	return tr("card_" + value) + " " + tr("card_" + type)
