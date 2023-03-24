extends Node2D


func _ready():
	pass # Replace with function body.

#para que assim que o botão continuar for apertado a cena mude para a fase 3
func _on_continuar_pressed():
	get_tree().change_scene("res://fase3.tscn")
