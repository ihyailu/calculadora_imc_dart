import 'dart:convert';
import 'dart:io';
import 'package:imc_dart/class/pessoa.dart';
void main() {

  try {
    print ("Por favor, digite o seu nome: ");
    String nome = stdin.readLineSync(encoding: utf8) ?? "";

    print ("Por favor, digite o seu peso: ");
    String pesoString = stdin.readLineSync(encoding: utf8) ?? "";
    double peso = double.tryParse(pesoString) ?? 0;

    print ("Por favor, digite a sua altura: ");
    String alturaString = stdin.readLineSync(encoding: utf8) ?? "";
    double altura = double.tryParse(alturaString) ?? 0;


    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();
    String resultadoIMC = pessoa.tabelaIMC(imc);

    print ("O IMC de ${pessoa.nome} é: $imc");
    print ("De acordo com a tabela de IMC, o seu resultado é: $resultadoIMC");
  } catch (e) {
    print("Erro: $e");
  }

}
