import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_router_outlet/app/core/enums.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/home_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/notifies/notifies_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/settings/settings_module.dart';

part 'main_tab_page_store.g.dart';

class MainTabPageStore = _MainTabPageStore with _$MainTabPageStore;

abstract class _MainTabPageStore with Store {
  @observable
  int currentTabIdx = ETabs.HOME;

  @action
  void navigateTo(int id, {String route = ''}) {
    if (id == ETabs.HOME) {
      Modular.to
          .navigate(MainTabsModule.routeName + HomeModule.routeName + route);
    } else if (id == ETabs.NOTIFY) {
      Modular.to.navigate(
          MainTabsModule.routeName + NotifiesModule.routeName + route);
    } else if (id == ETabs.SETTINGS) {
      Modular.to.navigate(
          MainTabsModule.routeName + SettingsModule.routeName + route);
    }
    currentTabIdx = id;
  }
}
