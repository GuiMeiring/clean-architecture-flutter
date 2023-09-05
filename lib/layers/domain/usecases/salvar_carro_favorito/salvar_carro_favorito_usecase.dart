import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

// abstract class SalvarCarroFavoriteUseCase {
//   Future<bool> call(CarroEntity carroEntity);
// }
abstract class SalvarCarroFavoriteUseCase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
