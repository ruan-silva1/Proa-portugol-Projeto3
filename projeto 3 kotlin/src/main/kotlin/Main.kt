package org.example

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {
    contador()
    //explodirBomba()
}

fun mediaAluno() {
    var i = 1
    while (i in 1..6) {
        println("qual a $i° nota")
        
        i++
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