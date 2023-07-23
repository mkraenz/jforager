extends CharacterBody2D

const SPEED := 100.0

@onready var anims: AnimatedSprite2D = $AnimSprite


func _physics_process(delta):
	move_and_slide()
