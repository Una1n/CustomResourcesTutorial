class_name Player
extends CharacterBody3D

var stats: CharacterStats = null

@onready var current_health: int = stats.starting_health

func load_stats(character_stats: CharacterStats) -> void:
	stats = character_stats

func _ready() -> void:
	print("Starting Health: %s" % current_health)
	print("Int: %s" % stats.intelligence)
	print("Dex: %s" % stats.dexterity)
	print("Str: %s" % stats.strength)
