class_name Card extends Node2D

@export var  cardName: String = "Card Name"
@export var cardDescription: String = "Card Description"
@export var cardCost: int = 1
@export var cardImage: Node2D

@onready var costLabel: Label = $CostDisplay/CostLabel
@onready var descLabe: Label = $CardDescription
@onready var nameLabel: Label = $CardName/NameLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
