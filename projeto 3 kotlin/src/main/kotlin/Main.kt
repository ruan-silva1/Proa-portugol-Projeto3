package org.example

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {
    mediaAluno()
    //mostrarTabuata()
    //buscarIntevarlo()
    //calcularMedia15a100()
    //contador()
    //explodirBomba()
}

fun mostrarTabuata(){

    println("escreva um numero maior ou igual a 1")
    var numero = readln().toInt()
    while(1<=numero){
        var i = 1
        println("tabuado do $numero")
        while(i<=10){
            var resultado: Int = numero * i
            println("$numero * $i = $resultado")
            i++
        }
        numero--
    }

}

fun buscarIntevarlo(){
    var i = 1
    var numerosEntre24e42 = DoubleArray(20)
    var indicesEntre24e42 = 0
    var numerosNaoEntre24e42 = DoubleArray(20)
    var indicesNaoEntre24e42 = 0

    while(i<11){
        println("digite o $i° valor")
        var valor = readln().toDouble()
        if(valor in 24.0..42.0){
            numerosEntre24e42[indicesEntre24e42] = valor
            indicesEntre24e42++
        }
        else{
            numerosNaoEntre24e42[indicesNaoEntre24e42] = valor
            indicesNaoEntre24e42++
        }

        i++
    }
    println("os numeros entre 24 e 42 são")
    i=0
    while(i<indicesEntre24e42){
        print("${numerosEntre24e42[i]}, ")
        i++
    }
    println("\n os numeros que nao estão entre 24 e 42")
    i=0
    while(i<indicesNaoEntre24e42){
        print("${numerosNaoEntre24e42[i]}, ")
        i++
    }
}

fun calcularMedia15a100(){
    val numerosEntre = 100 - 15
    var soma = 0
    var i = 15
    while(i in 15..100){
        soma+=i
        i++
    }
    val media = (soma / numerosEntre).toDouble()
    println("a media é $media")
}

fun mediaAluno() {
    var alunos = 0
    gerarMediaAluno()
    alunos ++
    println("deseja cadastrar mais alunos? S/N")
    var resposta = readln()
    while(resposta == "s"){
        gerarMediaAluno()
        alunos ++
        println("deseja cadastrar mais alunos? S/N")
        resposta = readln()
    }
    println("alunos cadastrados = $alunos")
}

fun gerarMediaAluno(){
    var soma = 0.0
    var i = 1
    var nota = 0.0
    while (i in 1..6) {
        println("qual a $i° nota")
        nota = readln().toDouble()
        while(nota < 0.0 || nota > 10.0){
            println("escolha um valor entre 0 e 10")
            nota = readln().toDouble()
        }
        soma+=nota
        i++
    }
    val media = soma / 6
    if(media >= 9.5){
        println("Aluno Aprovado! a media do aluno foi $media")
    }
    else{
        println("Aluno reprovado! a media do aluno foi $media")
    }
}

fun contador(){
    var num = 10
    while(num > 0){
        println(num)
        Thread.sleep(1000)
        num --
    }
}

fun explodirBomba(){
    var tempo = 30
    while(tempo > 0){
        println(tempo)
        Thread.sleep(1000)
        tempo --
    }
    println("explosao")
}

fun dividirValores(){
    println("escolha um valor")
    val num1 = readln().toDouble()
    println("escolha outro valor")
    var num2 = readln().toDouble()
    while(num2 <= 0){
        println("escolha um valor maior que 0")
        num2 = readln().toDouble()
    }

    val resultado = num1 / num2
    println("o resultado de $num1 / $num2 é $resultado")
}