extends Node2D

var scene = preload("res://world/resources/Stone.tscn")


func _on_resource_respawn_timer_timeout():
	print("hello world")
	var rng = RandomNumberGenerator.new()
	var my_random_x = rng.randf_range(0.00, 325.0)
	var my_random_y = rng.randf_range(0.0, 1300.0)
	var stone = scene.instantiate()
	add_child(stone)
	stone.global_position = Vector2(my_random_x, my_random_y)

	print(my_random_x)
	print(my_random_y)
