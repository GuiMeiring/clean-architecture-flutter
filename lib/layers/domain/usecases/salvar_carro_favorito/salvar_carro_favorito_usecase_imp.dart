import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoriteUseCase {
  final SalvarCarroFavoriteRepository _salvarCarroFavoriteRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoriteRepository);
  @override
  // Future<bool> call(CarroEntity carroEntity) async {
  //   carroEntity.setLogica();
  //   return await _salvarCarroFavoriteRepository(carroEntity);
  // }

  Future<Either<Exception,bool>>call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoriteRepository(carroEntity);
  }
}
