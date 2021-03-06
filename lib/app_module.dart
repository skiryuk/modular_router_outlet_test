import 'package:flutter_modular/flutter_modular.dart';

import 'app/modules/main_tabs/main_tabs_module.dart';
import 'app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute(MainTabsModule.routeName, module: MainTabsModule()),
  ];
}
