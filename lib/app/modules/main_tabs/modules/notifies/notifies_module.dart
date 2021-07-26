import 'package:flutter_modular/flutter_modular.dart';

import 'pages/notifies_details.dart';
import 'pages/notifies_page.dart';

class NotifiesModule extends Module {
  static const routeName = '/notifies-module';
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => NotifiesPage(),
        children: [
          ChildRoute(NotifiesDetails.routeName,
              child: (_, __) => NotifiesDetails()),
        ]),
  ];
}
