import 'package:flutter_modular/flutter_modular.dart';

import 'pages/settings_page.dart';

class SettingsModule extends Module {
  static const routeName = '/settings-module';
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SettingsPage())
  ];
}
