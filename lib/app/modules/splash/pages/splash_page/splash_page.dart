import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_router_outlet/app/modules/main_tabs/main_tabs_module.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Modular.to.pushReplacementNamed(MainTabsModule.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
