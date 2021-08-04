import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/modules/home_detail/home_detail_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/modules/home_detail/pages/home_detail_page/home_detail_page.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/pages/home_page_root.dart';

import 'pages/home_page.dart';

class HomeModule extends Module {
  static const routeName = '/home-module';

  @override
  // TODO: implement paths
  List<String> get paths => ['home'];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => HomePageRoot(),
        duration: const Duration(milliseconds: 0),
        transition: TransitionType.noTransition,
        children: [
          ChildRoute(HomePage.routeName,
              child: (_, __) => HomePage(),
              duration: const Duration(milliseconds: 0),
              transition: TransitionType.noTransition),
          ModuleRoute(HomeDetailModule.routeName,
              module: HomeDetailModule()),
        ]),
  ];
}
