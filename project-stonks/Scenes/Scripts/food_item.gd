class_name FoodItem
extends Resource

@export_group("Aesthetic")
@export var item_name: String
@export var sprite: Texture2D

@export_group("Primary Stats")
@export var base_price: float
@export var starting_supply: float
@export var starting_demand: float
@export var base_stock_value: float

var market_price
var stock_value
var supply
var demand
