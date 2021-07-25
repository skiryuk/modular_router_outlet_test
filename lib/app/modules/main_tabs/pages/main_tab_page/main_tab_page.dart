import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/home_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/notifies/notifies_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/settings/settings_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';

class MainTabPage extends StatefulWidget {
  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends ModularState<MainTabPage, MainTabPageStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouterOutlet(),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          onTap: (id) => store.navigateTo(id),
          currentIndex: store.currentTabIdx,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Notifies',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
