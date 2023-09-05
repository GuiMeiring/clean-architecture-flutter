import 'package:clean_architecture/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarroPorCorDataSource {
  // CarroDto call(String cor);

  Either<Exception, CarroDto> call(String cor);
}
