extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	# fazer com que as facas comecem a ser atiradas assim que o último peso cair
	if $Control2/Area2D4.position.y >= 400:
		$Control/Area2D.move_local_x(8)
		$Control/Area2D2.move_local_x(10)
		$Control/Area2D3.move_local_x(12)
	
#fazer com que o player vá par o ouvtro aviso assim que encontre o personagem

func _on_personagem_body_entered(body):
	get_tree().change_scene("res://story2.tscn")
