extends Node2D


func _ready():
	pass 

# mudar cena para fase 1
func _on_Button_pressed():
	get_tree().change_scene("res://fase1.tscn")

# mudar cena para a história do jogo
func _on_story_pressed():
	get_tree().change_scene("res://story.tscn")
