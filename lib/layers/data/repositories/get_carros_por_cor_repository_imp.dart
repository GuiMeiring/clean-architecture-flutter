import 'package:clean_architecture/layers/data/dtos/carro_dto.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    //chamamos a Api e ela respondeu um Map
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00
    };

    return CarroDto.fromMap(json);
  }
}
