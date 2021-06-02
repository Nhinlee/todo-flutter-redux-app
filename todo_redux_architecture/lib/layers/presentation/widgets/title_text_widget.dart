import 'package:flutter/material.dart';
import 'package:todo_redux_architecture/layers/presentation/theme.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;

  const TitleTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Text(
        this.text,
        style: TextStyle(
          color: AppColorTheme.black,
          fontSize: AppTextTheme.heading4,
        ),
      ),
    );
  }
}
