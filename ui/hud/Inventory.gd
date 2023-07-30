extends Label

@onready var eventbus := Eventbus

var stones = 0
var wood = 0


func _ready():
	eventbus.connect("stone_destroyed", _on_stone_destroyed)
	eventbus.connect("wood_destroyed", _on_wood_destroyed)


func _on_stone_destroyed():
	stones = stones + 1
	anzeigen()


func _on_wood_destroyed():
	wood = wood + 1
	anzeigen()


func anzeigen():
	var format_string = "stone: %s\nwood: %s"
	var actual_string = format_string % [stones, wood]
	self.text = actual_string
