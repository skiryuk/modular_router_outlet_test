import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/splash/pages/splash_page/splash_page.dart';

class SplashModule extends Module {
  static const routeName = '/splash';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage()),
  ];
}
