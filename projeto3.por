programa
{

	// Escreva um algoritmo para ler 2 valores informados pelo usuário e se o segundo valor informado for igual ou menor que ZERO, deve ser lido um novo valor. Ou seja, para o segundo valor não pode ser aceito o valor zero, nem um valor negativo. seu programa deve imprimir o resultado da divisão do primeiro valor lido pelo segundo valor e exibir o resultado ao usuário. 
	//Crie uma bomba relógio (usando somente código - para deixar claro!) cuja contagem regressiva vá de 30 a 0. No final da repetição escreva "EXPLOSÃO".
	// Escreva um algoritmo para imprimir os números de 1 (inclusive) a 10 (inclusive) em ordem decrescente. Exemplo: 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
	//Faça um algoritmo que calcule e escreva a média aritmética dos números inteiros entre 15 (inclusive) e 100 (inclusive).
	//Faça um algoritmo que calcule e escreva a média aritmética dos dois números inteiros informados pelo usuário e todos os números inteiros entre eles. Considere que o primeiro sempre será menor que o segundo. 

	inclua biblioteca Util
	funcao inicio()
	{
		//divisorDeValores()
		//bombaRelogio()
		//ordemDecresente()
		//calcularMediaEntreNumeros()
		//calcularMediaAlunos()
		//contator()
		//contatorAcimaCem()
		//mostrarTabuada()
		//numerosentre()
	}

	funcao divisorDeValores(){
		inteiro valor, num1,resultado
		escreva("digite um valor ")
		leia(valor)
		num1 = valor
		escreva("digite outro valor maior que 0 ")
		leia(valor)
		enquanto(valor<=0){
			escreva("valor invalido! Digite um valor maior que 0 ")
			leia(valor)
		}
		resultado = num1 / valor 
		escreva("o resultado é " + resultado)
	}

	funcao bombaRelogio(){
		inteiro tempo_bomba = 30
		enquanto (tempo_bomba > 0 ){
		 escreva(tempo_bomba + "\n")
		 Util.aguarde(1000)
		 tempo_bomba--
		}
		escreva("explosao")
	}

	funcao ordemDecresente(){
		inteiro num = 10
		enquanto(num > 0){
			escreva(num + "\n")	
			num--
		}
	}
	
	funcao calcularMediaEntreNumeros(){
		
		inteiro valor
		
		escreva("escolha um numero limite para media ")
		leia(valor)
		inteiro num1 = valor
		
		escreva("escolha um numero menor que o primeiro para media ")
		leia(valor)
		
		se (valor > num1){
			escreva("numero invalido escolha um numero menor que " + num1)
			leia(valor)
		}

		inteiro quantidade_de_numeros = num1 - (valor - 1)
		real soma = 0
		
		enquanto(num1 >= valor){
			soma+=num1
			num1--
		}
		escreva("a soma é "+soma)
		real media = soma / quantidade_de_numeros 
		escreva(" a média é " + media)
	}

	funcao calcularMediaAlunos(){
		inteiro alunos = 0 
		cadeia resposta
		cadastrarAluno()
		alunos ++
		escreva("deseja cadastrar mais alunos? S/N ")
		leia(resposta)
		enquanto(resposta=="s" ou resposta == "S"){
			cadastrarAluno()
			alunos ++
			escreva("\n deseja cadastrar mais alunos? S/N ")
			leia(resposta)
		}
		escreva(" quantidade de alunos cadastrados " + alunos)
	}

	funcao cadastrarAluno(){
		inteiro soma = 0
		inteiro nota
		inteiro i = 1

		enquanto(i < 7){
		escreva("digite a " + i +"°" +" nota do aluno ")
		leia(nota)
		enquanto(nota < 0 ou nota > 10){
			escreva("valor invalido! digite uma nota de 0 a 10 ")
			leia(nota)
		}
		soma+=nota
		i++
		}

		real media = soma / 6
		
		se (media >= 9.5){
			escreva("aluno foi aprovado sua media foi " + media + "\n")
		}senao{
			escreva("aluno foi reprovado sua media foi " + media + "\n")
		}
	}

	funcao contator(){
		inteiro i = 1
		inteiro valor
		escreva("escolha um numero ")
		leia(valor)
		enquanto(valor < 0){
		escreva("numero ivalido! escolha outro numero ")
		leia(valor)
		}
		enquanto (i<=valor){
			escreva(i + " ")
			i++
		}
	}

	funcao contatorAcimaCem(){
		inteiro valor = 100
		inteiro limite = valor + 10
		enquanto (valor <= limite){
			escreva(valor + " ")
			valor++
		}
	
}

	funcao mostrarTabuada(){

		inteiro n
		escreva("escolha um numero ")
		leia(n)
		enquanto(n < 0){
		escreva("numero ivalido! escolha outro numero ")
		leia(n)
		}
		enquanto(1<=n){
			inteiro i = 1
			escreva("\n tabuado do "+ n + "\n")
			enquanto(i<=10){
			escreva(n +" * " + i + " = " + n*i + "\n")
			i++
			}
		n--
		}
	}

	funcao numerosentre(){

		inteiro i = 0
		inteiro numerosEntre24e42[20]
		inteiro indicesEntre24e42 = 0
		inteiro numerosNaoEntre24e42[20]
		inteiro indicesNaoEntre24e42 = 0
		inteiro valor 
		
		enquanto(i<10){
		escreva("digite o " + (i+1) + "°" + " valor ")
		leia(valor)
		se(valor >= 24 e valor <=42){
			numerosEntre24e42[indicesEntre24e42] = valor
			indicesEntre24e42++
		}
		senao{
			numerosNaoEntre24e42[indicesNaoEntre24e42] = valor
			indicesNaoEntre24e42++
		}
		
		i++
		}
		
		escreva("os numeros entre 24 e 42 sao \n")
		i=0
		
		enquanto(i<indicesEntre24e42){
				escreva(numerosEntre24e42[i] + " ")
				i++
		}
		
		escreva("\n os numeros que nao estao entre 24 e 42 sao \n")
		i=0
			enquanto(i<indicesNaoEntre24e42){
				escreva(numerosNaoEntre24e42[i] + " ")
				i++
			}
	}
}	

	

	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1248; 
 * @DOBRAMENTO-CODIGO = [23, 38, 48, 56, 84, 100, 125, 140, 150];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */