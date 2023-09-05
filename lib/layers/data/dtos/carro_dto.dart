import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  //CarroDto é taméem um CarroEntity
  //atributos que preciso para montar minha entitade

  //a entity não deve ser modela pela sua API, a entity precisa ser modela com a regra de negocio
  //toda parte de interação com a API quem vai fazer o depara é o dto, o dto tem o que a API espera e logo em seguida vai devolver para a entity esses valores já convertidos e tratados
  String placaCarro;
  int quatidadeDePortas;
  double valorFinal;

  CarroDto(
      {required this.placaCarro,
      required this.quatidadeDePortas,
      required this.valorFinal
      }): super(
        placa: placaCarro, 
        qtdPortas: quatidadeDePortas, 
        valor: valorFinal
      );

  Map toMap() {//toJson - enviado para uma API
    return {
      'placa': placaCarro,
      'quatidadeDePortas': quatidadeDePortas,
      'valorFinal': valorFinal
    };
  }

  static fromMap(Map map) {//fromJson - retornado de uma Api
    return CarroDto(
      placaCarro: map['placa'],
      quatidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal']
    );
  }
}
