class CarroEntity {
  //atributos da entidade
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity(
      {required this.placa, required this.qtdPortas, required this.valor});

  //regra de negócios da entidade, pertence só para ela

  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valor > 10000.00) {
      valor = valor * 2;
    }
  }
}
