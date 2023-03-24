extends Control


func _ready():
	pass


#para que, ao ser atinfido pelas facas, a cena reinicie

func _on_Area2D_body_entered(body):
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
	
func _on_Area2D2_body_entered(body):
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
		
func _on_Area2D3_body_entered(body):
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
