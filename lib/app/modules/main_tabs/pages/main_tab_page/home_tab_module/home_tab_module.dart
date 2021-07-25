import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeTabModule extends WidgetModule {

  @override
  List<Bind> get binds => [
  ];

  Widget get view => HomePage();
}