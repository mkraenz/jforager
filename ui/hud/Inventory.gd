extends Label

@onready var eventbus := Eventbus

var stones = 0
var wood = 0
var iron = 0


func _ready():
	eventbus.connect("stone_destroyed", _on_stone_destroyed)
	eventbus.connect("wood_destroyed", _on_wood_destroyed)
	eventbus.connect("iron_destroyed", _on_iron_destroyed)


func _on_stone_destroyed():
	stones = stones + 1
	anzeigen()


func _on_wood_destroyed():
	wood = wood + 1
	anzeigen()


func _on_iron_destroyed():
	iron = iron + 1
	anzeigen()


func anzeigen():
	var format_string = "stone: %s\nwood: %s\niron: %s"
	var actual_string = format_string % [stones, wood, iron]
	self.text = actual_string
