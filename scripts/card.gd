@tool
class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_desc: String = "Card Description"
@export var card_cost: int = 1
@export var card_image_sprite: Sprite2D

@onready var cost_label: Label = $CostDisplay/CostLabel
@onready var desc_label: Label = $CardDescription
@onready var name_label: Label = $CardName/NameLabel
@onready var card_image: Sprite2D = $CardImage/CardImageSprite

func _ready():
	set_values(card_cost, card_desc, card_name, card_image_sprite)

func set_values(new_cost: int, new_desc: String, new_name: String, new_image: Node2D) -> void:
	card_cost = new_cost
	card_desc = new_desc
	card_name = new_name
	card_image_sprite = new_image
	
	update_graphics()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_graphics():
	if cost_label.get_text() != str(card_cost):
		cost_label.set_text(str(card_cost))
	
	if desc_label.get_text() != card_desc:
		desc_label.set_text(card_desc)
		
	if name_label.get_text() != card_name:
		name_label.set_text(card_name)
	
	if card_image.texture != card_image_sprite.texture:
		card_image.texture = card_image_sprite.texture
