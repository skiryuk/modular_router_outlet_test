import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notifies_page.dart';

class NotifiesTabModule extends WidgetModule {

  @override
  List<Bind> get binds => [
  ];

  Widget get view => NotifiesPage();
}