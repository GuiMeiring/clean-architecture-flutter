import 'package:clean_architecture/layers/data/datasources/get_carro_por_cor_datasource.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCArroPorCorDataSource _getCArroPorCorDataSource;

  GetCarrosCorRepositoryImp(this._getCArroPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    //chamamos a Api e ela respondeu um Map
   
    return _getCArroPorCorDataSource(cor);
  }
}
