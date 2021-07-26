import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePageRoot extends StatefulWidget {

  @override
  _HomePageRootState createState() => _HomePageRootState();
}

class _HomePageRootState extends State<HomePageRoot> {
  @override
  Widget build(BuildContext context) {
    return RouterOutlet();
  }
}
