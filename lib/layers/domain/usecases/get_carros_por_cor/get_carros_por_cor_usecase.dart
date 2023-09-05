//criar um contrato
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

// abstract class GetCarrosPorCorUseCase {
//   //metodo
//   CarroEntity call(String cor);

//   //call qaundo escrever GetCarrosPorCorUseCase  só passar os argumentos que precisa, não precisa passar GetCarrosPorCorUseCase.get e os argumentos
// }

abstract class GetCarrosPorCorUseCase {
  //metodo
  Either<Exception,CarroEntity> call(String cor);

  //call - quando escrever GetCarrosPorCorUseCase só passar os argumentos que precisa, não precisa passar GetCarrosPorCorUseCase.get e os argumentos
}
