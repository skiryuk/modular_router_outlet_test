import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_detail_page.dart';
import 'pages/home_page.dart';

class HomeModule extends Module {
  static const routeName = '/home-module';
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => HomePage()),
    ChildRoute(HomeDetailPage.routeName, child: (_, __) => HomeDetailPage()),
  ];
}
