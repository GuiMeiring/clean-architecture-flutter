import 'package:clean_architecture/layers/data/datasources/get_carro_por_cor_datasource.dart';
import 'package:clean_architecture/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorDataSourceImp implements GetCArroPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00
  };
  final jsonAny = {
    'placa': 'QWE123',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }

    return CarroDto.fromMap(jsonAny);
  }
}
