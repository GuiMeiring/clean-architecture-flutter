import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

//é assicrono, pode demorar ou não
abstract class SalvarCarroFavoriteRepository {
  Future<bool> call(CarroEntity carroEntity);
}
