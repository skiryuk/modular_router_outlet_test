import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifiesPage extends StatefulWidget {
  static const routeName = '/notifies-page';

  @override
  _NotifiesPageState createState() => _NotifiesPageState();
}

class _NotifiesPageState extends State<NotifiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Text('notifies_page'),
    ));
  }
}
