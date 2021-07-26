import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/pages/home_page_root.dart';

import 'pages/home_detail_page.dart';
import 'pages/home_page.dart';

class HomeModule extends Module {
  static const routeName = '/home-module';
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => HomePageRoot(),
        children: [
          ChildRoute(HomePage.routeName, child: (_, __) => HomePage()),
          ChildRoute(HomeDetailPage.routeName,
              child: (_, __) => HomeDetailPage()),
        ]),
  ];
}
