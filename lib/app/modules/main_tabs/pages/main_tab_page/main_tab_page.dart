import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/home_tab_module/home_tab_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/main_tab_page_store.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/notifies_tab_module/notifies_tab_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/pages/main_tab_page/settings_tab_module/settings_tab_module.dart';

class MainTabPage extends StatefulWidget {
  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends ModularState<MainTabPage, MainTabPageStore> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(controller: controller, children: [
              HomeTabModule(),
              NotifiesTabModule(),
              SettingsTabModule()
            ]),
          ),
          Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => controller.jumpToPage(0),
                    child: Icon(Icons.home)),
                GestureDetector(
                    onTap: () => controller.jumpToPage(1),
                    child: Icon(Icons.access_alarms_sharp)),
                GestureDetector(
                    onTap: () => controller.jumpToPage(2),
                    child: Icon(Icons.accessibility))
              ],
            ),
          )
        ],
      ),
    );
  }
}
