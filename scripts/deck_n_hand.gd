extends Node2D

@onready var attack_card_scene: PackedScene = preload("res://scenes/cards/attack_card.tscn")
@onready var defend_card_scene: PackedScene = preload("res://scenes/cards/defend_card.tscn")

@onready var spawn_point = $CanvasLayer/Spawn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var card = attack_card_scene.instantiate()
	spawn_point.add_child(card)


func _on_button_2_pressed() -> void:
	var card = defend_card_scene.instantiate()
	spawn_point.add_child(card)
