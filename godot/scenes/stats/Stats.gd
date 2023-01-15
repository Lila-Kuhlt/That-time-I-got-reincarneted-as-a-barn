extends Node2D

var AS = 0 # Attack speed
var DMG = 0 # Damage
var AOE = 0 # Area of Effect
var KB = 0 # Knockback
var PEN = 0 # Penetration
var RG = 0 # Range
var PS = 0 # Projectile Speed
var HP = 0 # Health

signal stats_updated()

func _ready():
	calc_stats()

func reset_stats():
	AS = 0
	DMG = 0
	AOE = 0
	KB = 0
	PEN = 0
	RG = 0
	PS = 0
	HP = 0

func calc_stats():
	reset_stats()
	for child in get_children():
		AS += child.AS * child.multiplicator
		DMG += child.DMG * child.multiplicator
		AOE += child.AOE * child.multiplicator
		KB += child.KB * child.multiplicator
		PEN += child.PEN * child.multiplicator
		RG += child.RG * child.multiplicator
		PS += child.PS * child.multiplicator
		HP += child.HP * child.multiplicator
	emit_signal("stats_updated")