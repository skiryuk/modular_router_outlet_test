import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/core/enums.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/notifies/pages/notifies_details.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';

class HomeDetailPage extends StatelessWidget {
  static const routeName = '/home-detail-page';

  final _mainTabStore = Modular.get<MainTabPageStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('home_detail_page'),
            ElevatedButton(
              onPressed: () => _mainTabStore.navigateTo(ETabs.NOTIFY,
                  route: NotifiesDetails.routeName),
              child: const Text('Go to detail page in notifies'),
            ),
          ],
        ),
      ),
    ));
  }
}
