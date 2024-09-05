@tool
extends Node

@export var SkinColor : int : 
	get: return SkinColor
	set(value):
		SkinColor = value
		prints("SkinColor: ", SkinColor)
		updateSkinColors()

@export var animationPlayer : AnimationPlayer

@export var Head : Sprite2D
@export var Body : Sprite2D
@export var HandLeft : Sprite2D
@export var HandRight : Sprite2D
@export var Legs : Sprite2D
@export var Eyes : Sprite2D
@export var Hair : Sprite2D

@export var BodyWear : Sprite2D
@export var HeadWear : Sprite2D
@export var LegWear : Sprite2D
@export var FootWear : Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateSkinColors()

func updateSkinColors() -> void:
	updateSkinColor(Head)
	updateSkinColor(Body)
	updateSkinColor(HandLeft)
	updateSkinColor(HandRight)
	updateSkinColor(Legs)

	
func updateSkinColor(sprite:Sprite2D) -> void:
	if sprite != null:
		sprite.texture.region.position = Vector2(sprite.texture.region.position.x, float(SkinColor * 16))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
