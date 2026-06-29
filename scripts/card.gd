class_name Card extends Node2D

@export var  card_name: String = "Card Name"
@export var card_desc: String = "Card Description"
@export var card_cost: int = 1
@export var card_image: Node2D

@onready var cost_label: Label = $CostDisplay/CostLabel
@onready var desc_label: Label = $CardDescription
@onready var name_label: Label = $CardName/NameLabel

func _ready():
	cost_label.set_text(str(card_cost))
	desc_label.set_text(card_desc)
	name_label.set_text(card_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
