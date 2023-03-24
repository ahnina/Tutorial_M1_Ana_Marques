extends Node2D

func _ready():
	pass
	

#para que ao chegar no boneco na fase 1 a cena mude para o aviso de cuidado
func _on_player2_body_entered(body):
	if body.name == "player1":
		get_tree().change_scene("res://cuidado.tscn")


func _on_coracao_body_entered(body):
	if body.name == "player1":
		$coracao.visible = false
