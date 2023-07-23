extends CharacterBody2D

@export var SPEED := 100.0  # speed in pixels/sec

@onready var anims: AnimatedSprite2D = $AnimSprite


func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED

	move_and_slide()
