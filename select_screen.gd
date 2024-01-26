extends Control

@export var world: Node3D
@export var player_scene: PackedScene

func _on_mage_button_pressed() -> void:
	spawn_player("mage")

func _on_rogue_button_pressed() -> void:
	spawn_player("rogue")

func _on_warrior_button_pressed() -> void:
	spawn_player("warrior")

func spawn_player(character_type: String) -> void:
	var stats := load("res://resources/%s_stats.tres" % character_type) as CharacterStats
	var player := player_scene.instantiate() as Player
	player.load_stats(stats)
	world.add_child(player)
	queue_free()
