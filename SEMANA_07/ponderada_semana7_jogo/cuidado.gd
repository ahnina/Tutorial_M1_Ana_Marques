extends Node2D
func _ready():
	pass # Replace with function body.


#para que ao apertar o botão continuar, a fase 2 comece
func _on_continuar_pressed():
	get_tree().change_scene("res://fase2.tscn")
