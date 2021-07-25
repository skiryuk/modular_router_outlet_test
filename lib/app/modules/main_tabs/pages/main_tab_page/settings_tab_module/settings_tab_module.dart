import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'settings_page.dart';

class SettingsTabModule extends WidgetModule {

  @override
  List<Bind> get binds => [
  ];

  Widget get view => SettingsPage();
}