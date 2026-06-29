extends Node2D

@onready var card_scene: PackedScene = preload("res://scenes/card.tscn")

@onready var spawn_point = $CanvasLayer/Spawn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_values(1, "First Card Description", "Card One")
	card.visible = true


func _on_button_2_pressed() -> void:
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_values(2, "Second Card Description", "Card Two")
	card.visible = true
