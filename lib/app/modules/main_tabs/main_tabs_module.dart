import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';

import 'modules/home/home_module.dart';
import 'modules/notifies/notifies_module.dart';
import 'modules/settings/settings_module.dart';
import 'pages/main_tab_page/main_tab_page.dart';

class MainTabsModule extends Module {
  static const routeName = '/main-tabs-module';

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MainTabPageStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => MainTabPage(),
        children: [
          ModuleRoute(HomeModule.routeName, module: HomeModule()),
          ModuleRoute(NotifiesModule.routeName, module: NotifiesModule()),
          ModuleRoute(SettingsModule.routeName, module: SettingsModule()),
        ]),
  ];
}
