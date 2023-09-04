import 'package:clean_architecture/layers/data/dtos/carro_dto.dart';

abstract class GetCArroPorCorDataSource {
  CarroDto call(String cor);
}
