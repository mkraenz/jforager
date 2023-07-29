extends Label

@onready var eventbus := Eventbus

var stones = 0


func _ready():
	eventbus.connect("stone_destroyed", _on_stone_destroyed)


func _on_stone_destroyed():
	stones = stones + 1
	var format_string = "stone: %s"
	var actural_string = format_string % stones
	self.text = actural_string
