import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

//é assincrono, pode demorar ou não
// abstract class SalvarCarroFavoriteRepository {
//   Future<bool> call(CarroEntity carroEntity);
// }
abstract class SalvarCarroFavoriteRepository {
  Future<Either<Exception,bool>> call(CarroEntity carroEntity);
}
