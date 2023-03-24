extends Node2D

func _ready():
	pass # Replace with function body.


# fazer com que o player ande sozinha até o centro da tela e o "the end" apareça nesse mesmo momento
func _process(delta):
	if $player1animacao.position.x <= 500:
		$player1animacao.move_local_x(3)
		$player1animacao/AnimatedSprite.play("run")
		$coracoes.visible = false
	else:
		$player1animacao.move_local_x(0)
		$player1animacao/AnimatedSprite.play("idle")
		$coracoes.visible = true
