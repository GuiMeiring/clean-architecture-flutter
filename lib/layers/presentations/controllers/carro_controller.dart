import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoriteUseCase _salvarCarroFavoriteUseCase;

  CarroController(
      this._getCarrosPorCorUseCase, this._salvarCarroFavoriteUseCase) {
    getCarrosPorCor(
        'vermelho'); //assim que o construtor é criado ele vai executar o método de get
  }

  late CarroEntity carro;

  // getCarrosPorCor(String cor) {
  //   carro = _getCarrosPorCorUseCase(cor);
  // }

   getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold((error) => print(error.toString()), (sucess) => carro = sucess);
  }

  salvarCarroFavorito(CarroEntity carroEntity) async {
    await _salvarCarroFavoriteUseCase(carroEntity);
  }
}
