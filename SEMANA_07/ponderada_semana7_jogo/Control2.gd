extends Control

#velocidade
var speed1 = 4
var speed2 = 5
var speed3 = 6


func _ready():
	pass # Replace with function body.



func _process(delta):
	#fazer com que os pesos caiam
	$Area2D4.move_local_y(speed1)
	$Area2D.move_local_y(speed2)
	$Area2D2.move_local_y(speed3)


#fazer com que os pesos parem assim que chegarem ao chão e se encostarem no player a cena recomece
func _on_Area2D4_body_entered(body):
	if body.name == "terrain":
		speed1 = 0
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
func _on_Area2D_body_entered(body):
	if body.name == "terrain":
		speed2 = 0
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
func _on_Area2D2_body_entered(body):
	if body.name == "terrain":
		speed3 = 0
	if body.name == "player1":
		get_tree().change_scene("res://fase2.tscn")
