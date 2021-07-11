
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Text('settings_page'),
        ));
  }
}