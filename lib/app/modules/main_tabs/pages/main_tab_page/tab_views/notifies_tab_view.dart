import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotifiesTabView extends StatefulWidget {

  @override
  _NotifiesTabViewState createState() => _NotifiesTabViewState();
}

class _NotifiesTabViewState extends State<NotifiesTabView> {
  @override
  Widget build(BuildContext context) {
    return RouterOutlet();
  }
}
