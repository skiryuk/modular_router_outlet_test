import 'package:flutter_modular/flutter_modular.dart';

import 'pages/notifies_details.dart';
import 'pages/notifies_page.dart';

class NotifiesModule extends Module {
  static const routeName = '/notifies-module';
  @override
  final List<Bind> binds = [];

  @override
  // TODO: implement paths
  List<String> get paths => ['notifies'];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => NotifiesPage(),
        duration: const Duration(milliseconds: 0),
   transition: TransitionType.noTransition,
        children: [
          ChildRoute(NotifiesDetails.routeName,
              child: (_, __) => NotifiesDetails(),
              duration: const Duration(milliseconds: 0)),
        ]),
  ];
}
