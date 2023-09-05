import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoriteRepository {
  @override
  // Future<bool> call(CarroEntity carroEntity) async {
  //   return carroEntity.valor > 0;
  // }

  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository error'));
    }
  }
}
