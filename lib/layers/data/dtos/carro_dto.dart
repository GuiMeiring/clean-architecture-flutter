import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  //CarroDto é tambem um CarroEntity
  //atributos que preciso para montar minha entitade

  //a entity não deve ser modela pela sua API, a entity precisa ser modela com a regra de negocio
  //toda parte de interação com a API quem vai fazer o depara é o dto, o dto tem oque a API espera e logo em seguida vai devolver para a entity esses valores já convertidos e tratados
  String placa;
  int quatidadeDePortas;
  double valorFinal;

  CarroDto(
      {required this.placa,
      required this.quatidadeDePortas,
      required this.valorFinal
      }): super(
        placa: placa, 
        qtdPortas: quatidadeDePortas, 
        valor: valorFinal
      );

  Map toMap() {//toJson - envaindo para uma API
    return {
      'placa': this.placa,
      'quatidadeDePortas': this.quatidadeDePortas,
      'valorFinal': this.valorFinal
    };
  }

  CarroDto fromMap(Map map) {//fromJson - retornado de uma Api
    return CarroDto(
      placa: map['placa'],
      quatidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal']
    );
  }
}
