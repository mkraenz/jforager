extends Label

@onready var eventbus := Eventbus

var _passed_flags := 0


func _ready():
	eventbus.connect("flag_passed", _on_flag_passed)


func _on_flag_passed() -> void:
	_passed_flags += 1
