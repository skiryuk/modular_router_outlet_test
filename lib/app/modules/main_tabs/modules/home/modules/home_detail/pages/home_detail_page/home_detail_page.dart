import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/core/enums.dart';
import 'package:modular_router_outlet/app/core/custom_text_field.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/home_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/pages/home_page.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/notifies/pages/notifies_details.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';

import 'home_detail_page_store.dart';

class HomeDetailPage extends StatefulWidget {
  static const routeName = '/home-detail-page';

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  final _mainTabStore = Modular.get<MainTabPageStore>();
  final _homeDetailPageStore = Modular.get<HomeDetailPageStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('home_detail_page'),
            // Text(Random().nextInt(100).toString()),
            Observer(
                builder: (_) => Text('Count: ${_homeDetailPageStore.count}')),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: CustomTextField(
                text: _homeDetailPageStore.text,
                onChanged: (text) => _homeDetailPageStore.changeText(text),
              ),
            ),
            ElevatedButton(
              onPressed: () => _homeDetailPageStore.increase(),
              child: const Text('Increase count'),
            ),
            ElevatedButton(
              onPressed: () => _mainTabStore.navigateTo(ETabs.NOTIFY,
                  route: NotifiesDetails.routeName),
              child: const Text('Go to detail page in notifies'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    ));
  }
}
