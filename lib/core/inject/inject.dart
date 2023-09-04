import 'package:clean_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_architecture/layers/presentations/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance; //controllar as nossas indepedencias - objetos

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSourceImp>(() =>
        GetCarrosPorCorDataSourceImp()); //sempre vai ter a mesma instancia do inicio ao fim da aplicação, criado quando é chamado pela primeira vez
    //GetCarrosPorCorDataSorceImp - contrato que implementa

    // repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoriteRepository>(
        () => SalvarCarroFavoritoRepositoryImp());

    // usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoriteUseCase>(
        () => SalvarCarroFavoritoUseCaseImp(getIt()));

    // controllers
    getIt.registerFactory<CarroController>(() =>
        CarroController(getIt(), getIt())); //todas vez que eu recuperar um controller ela vai me gerar uma instacia nova
  }
}


