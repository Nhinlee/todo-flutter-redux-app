import 'package:flutter/material.dart';

class EditTodoTextField extends StatelessWidget {
  final TextEditingController controller;
  final int maxLines;

  const EditTodoTextField({Key key, this.controller, this.maxLines = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      maxLines: maxLines,
    );
  }
}
