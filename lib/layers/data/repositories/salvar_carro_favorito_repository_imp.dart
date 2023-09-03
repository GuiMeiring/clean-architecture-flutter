import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoriteRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}