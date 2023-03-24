extends Node2D

func _ready():
	pass 

# mudar cena para a tela inicial
func _on_voltar_pressed():
	get_tree().change_scene("res://node2D.tscn")
