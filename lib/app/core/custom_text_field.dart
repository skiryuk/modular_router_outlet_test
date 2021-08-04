import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String text;
  final void Function(String value) onChanged;

  CustomTextField({required this.text, required this.onChanged});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onChanged,
    );
  }
}
