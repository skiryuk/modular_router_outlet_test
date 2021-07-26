import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsTabView extends StatefulWidget {

  @override
  _SettingsTabViewState createState() => _SettingsTabViewState();
}

class _SettingsTabViewState extends State<SettingsTabView> {
  @override
  Widget build(BuildContext context) {
    return RouterOutlet();
  }
}
