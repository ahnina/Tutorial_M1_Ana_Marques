extends Node2D


func _ready():
	pass # Replace with function body.

#fazer com que o personagem vá embora da cena sozinho
func _process(delta):
	$player2/AnimatedSprite.move_local_x(-3)
	$player2/AnimatedSprite.play("run")
	$player2/AnimatedSprite.flip_h = true

#fazer com que a cena mude para a finalização assim que o player encostar na placa
func _on_seta_body_entered(body):
	get_tree().change_scene("res://finalização.tscn")
