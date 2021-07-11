
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/home_module.dart';

part 'main_tab_page_store.g.dart';

class MainTabPageStore = _MainTabPageStore with _$MainTabPageStore;

abstract class _MainTabPageStore with Store {
  @observable
  int currentTabIdx = 0;

  _MainTabPageStore() {
    // Modular.to.navigate(MainTabsModule.routeName + HomeModule.routeName);
  }
}