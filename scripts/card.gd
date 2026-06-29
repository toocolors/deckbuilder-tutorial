class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_desc: String = "Card Description"
@export var card_cost: int = 1
@export var card_image: Node2D

@onready var cost_label: Label = $CostDisplay/CostLabel
@onready var desc_label: Label = $CardDescription
@onready var name_label: Label = $CardName/NameLabel

func _ready():
	set_values(card_cost, card_desc, card_name)

func set_values(new_cost: int, new_desc: String, new_name: String) -> void:
	card_cost = new_cost
	card_desc = new_desc
	card_name = new_name
	
	cost_label.set_text(str(new_cost))
	desc_label.set_text(new_desc)
	name_label.set_text(new_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
