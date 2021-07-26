import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/home_module.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/modules/home/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Modular.to.navigate(
        MainTabsModule.routeName + HomeModule.routeName + HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
