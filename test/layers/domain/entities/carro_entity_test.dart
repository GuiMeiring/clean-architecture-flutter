//teste básico

import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

// main() {
//   test('Descrição', () {
//     var a = 10;

//     expect(a, 10); //valor atual, valor esperado
//   });
// }

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 10000.00);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 10000.00);
    expect(carroEntity.qtdPortas, 2);
  });
  test('Espero que o valorReal seja 20000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 10000.00);
    var resultadoEsperado = 20000.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valorReal seja 0.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 10000.00);
    var resultadoEsperado = 0.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 15000.00);

    var resultadoEsperado = 30000.00;
    carroEntity.setLogica();
    expect(carroEntity.valor, resultadoEsperado);
  });
}
