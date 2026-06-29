@tool
extends Node2D

@export var hand_radius: int = 100

@onready var collision_shape: CollisionShape2D = $DebugShape

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (collision_shape.shape as CircleShape2D).radius != hand_radius:
		(collision_shape.shape as CircleShape2D).set_radius(hand_radius)

func get_card_position(angle:float):
	pass
