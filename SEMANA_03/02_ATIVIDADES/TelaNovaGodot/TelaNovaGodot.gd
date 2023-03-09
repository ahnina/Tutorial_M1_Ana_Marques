extends Node2D

const lista1 = ['Escreva nos campos acima', 'Aperte em "mostrar lista"', ' E depois em "mostrar feedback']

var dado1
var dado2
var dado3
var lista2
func _on_listapronta_pressed():
	$ColorRect/lista1.text = String(lista1)


func _on_lista_usuario_pressed():
	dado1 = String($dado1.text)
	dado2 = String($dado2.text)
	dado3 = String($dado3.text)
	lista2 = dado1 + ", " + dado2 + ", "+ dado3
	$ColorRect/lista1.text = lista2 + " foi a lista criada por você"

func mostrartexto():
	$ColorRect/lista1.text = lista2 + ' fazem parte de um mesmo tema. Se não for o caso, digite um número em "dado 1" e clique em "?".'
func mostrarvalor():
	dado1 = String($dado1.text)
	$ColorRect/lista1.text = dado1 + 'é o seu novo número da sorte, você vai precisar'


func _on_texto_pressed():
	 mostrartexto()
func _on_numero_pressed():
	mostrarvalor()
