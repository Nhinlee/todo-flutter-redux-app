import 'package:flutter/material.dart';
import 'package:todo_redux_application/layers/presentation/theme/theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar({Key key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColorTheme.secondary,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
