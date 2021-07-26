import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/core/enums.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/notifies/pages/notifies_details.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';

import '../home_module.dart';
import 'home_detail_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';

  final _mainTabStore = Modular.get<MainTabPageStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('home_page'),
            ElevatedButton(
              onPressed: () => Modular.to.navigate(MainTabsModule.routeName + HomeModule.routeName + HomeDetailPage.routeName),
              child: const Text('Go to detail page'),
            ),
            ElevatedButton(
              onPressed: () =>_mainTabStore.navigateTo(ETabs.NOTIFY, route: NotifiesDetails.routeName),
              child: const Text('Go to detail page in notifies'),
            ),
            Expanded(child: RouterOutlet())
          ],
        ),
      ),
    ));
  }
}
