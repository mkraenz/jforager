extends Node2D

var scene = preload("res://world/resources/Stone.tscn")


func _ready():
	var stone = scene.instantiate()
	add_child(stone)
	stone.global_position = Vector2(100, 100)
