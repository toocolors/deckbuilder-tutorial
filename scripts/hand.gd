@tool
class_name Hand extends Node2D

@export var angle_limit: float = 20
@export var card_angle: float = 90
var hand: Array = []
@export var hand_radius: int = 100
@export var max_card_spread_angle: float = 5

@onready var collision_shape: CollisionShape2D = $DebugShape
@onready var test_card = $TestCard

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (collision_shape.shape as CircleShape2D).radius != hand_radius:
		(collision_shape.shape as CircleShape2D).set_radius(hand_radius)
	
	test_card.set_position(get_card_position(card_angle))
	test_card.set_rotation(deg_to_rad(card_angle + 90))

func add_card(card: Node2D) -> void:
	hand.push_back(card)
	reposition_cards()

func get_card_position(angle_in_deg:float) -> Vector2:
	var x: float = hand_radius * cos(deg_to_rad(angle_in_deg))
	var y: float = hand_radius * sin(deg_to_rad(angle_in_deg))
	return Vector2(x, y)

func reposition_cards():
	var card_spread = min(angle_limit / hand.size(), max_card_spread_angle)
	var current_angle = -((card_spread * hand.size()) / 2) - 90
	for card in hand:
		update_card_transform(card, current_angle)
		current_angle += card_spread

func update_card_transform(card: Node2D, angle_in_drag: float):
	card.set_position(get_card_position(angle_in_drag))
	card.set_rotation(deg_to_rad(angle_in_drag + 90))
