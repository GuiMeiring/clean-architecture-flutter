import 'package:clean_architecture/core/inject/inject.dart';
import 'package:clean_architecture/layers/presentations/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Inject.init();//inicia as inject - getIt
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
