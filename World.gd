extends Node2D

var Stone = preload("res://world/resources/Stone.tscn")
var Wood = preload("res://world/resources/Wood.tscn")

var rng = RandomNumberGenerator.new()


func _on_resource_respawn_timer_timeout():
	spawn(Stone)
	spawn(Wood)


func spawn(ResourceBlueprint):
	var resource = ResourceBlueprint.instantiate()
	add_child(resource)
	resource.global_position = _random_vector()


func _random_vector() -> Vector2:
	var x = rng.randf_range(0.00, 325.0)
	var y = rng.randf_range(0.0, 548.0)
	return Vector2(x, y)
