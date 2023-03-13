extends Node2D
#mudar "número" para "numero" - não é possível escrever o código com acento
#escrever "var" antes de "lista", para indicar que é uma variável
#adicionar a variável "nome", que será usada posteriormente e portanto deve ser indicada como var antes.
var teste = false
var valor = 0
var numero = 0
var lista = []
var nome

# mudar "número" para "numero"
#adicionar o $ antes de LineEdit, para poder "chamá-lo"
#adicionar LineEdit2, para diferenciar a informação de número e de texto (nome)
# adicionar str antes de LineEdit2, para "informar" que é uma informação do tipo texto.
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	nome = str($LineEdit2.text)

# mudar "Numero" para "numero", a variável deve ser escrita exatamente igual como foi criada
#mudar "Label" para "RichTextLabel", para que o texto possa ser mutável conforme  a informação inserida para o usuário
# colocar str antes de número, para que agora ele posssa ser lido como texto
func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	$ColorRect/RichTextLabel.text = String(numero)

# mudar o while para for, para que o laço de repetição pare em algum momento
# adicionar a variável cont
# eliminar a variável i (uma vez que já está sendo usada no for)
# mudar label por RichTextLabel
func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	#adicionar var antes de cont
	for i in len(lista):
		var cont=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$ColorRect/RichTextLabel.text = nome
