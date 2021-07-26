import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeTabView extends StatefulWidget {

  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    return RouterOutlet();
  }
}
