class Pessoa {
  late String nome;
  late double peso;
  late double altura;

  Pessoa (this.nome, this.peso, this.altura);

  double calcularIMC () {
    if (altura <= 0 || peso <= 0) {
      throw Exception("Peso inválido. Por favor, digite os números corretamente!");
    }

    double imc = peso / (altura * altura);
    return imc;
  }

  String tabelaIMC (double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc < 17) {
      return "Magreza moderada";
    } else if (imc < 18.5) {
      return "Magreza leve";
    } else if (imc < 25) {
      return "Saúdavel";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade grau 1";
    } else if (imc < 40) {
      return "Obesidade grau 2 (severa)";  
    } else {
      return "Obesidade grau 3 (mórbida)";
    }
  } 
}
