extends Label

@onready var eventbus := Eventbus

var counter = 0
var _passed_flags := 0


func _ready():
	eventbus.connect("flag_passed", _on_flag_passed)
	eventbus.connect("stone_destroyed", _on_timer_timeout)


func _on_flag_passed() -> void:
	_passed_flags += 1


func _on_timer_timeout():
	counter = counter + 1
	var format_string = "stone: %s"
	var actural_string = format_string % counter
	self.text = actural_string
