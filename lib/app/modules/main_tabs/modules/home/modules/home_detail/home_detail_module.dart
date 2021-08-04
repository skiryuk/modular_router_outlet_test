import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_detail_page/home_detail_page.dart';
import 'pages/home_detail_page/home_detail_page_store.dart';

class HomeDetailModule extends Module {
  static const routeName = '/home-detail-module';

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeDetailPageStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => HomeDetailPage(), duration: const Duration(milliseconds: 0)),
  ];
}
