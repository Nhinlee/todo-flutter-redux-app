import 'package:flutter/material.dart';
import 'package:todo_redux_architecture/presentation/screens/all_todo_screen.dart';
import 'package:todo_redux_architecture/presentation/screens/complete_todo_screen.dart';
import 'package:todo_redux_architecture/presentation/screens/uncomplete_todo_screen.dart';
import 'package:todo_redux_architecture/presentation/theme.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: getAppBar(),
        body: getBody(),
        bottomNavigationBar: Material(
          color: AppColorTheme.secondary,
          child: TabBar(
            indicator: BoxDecoration(
              color: AppColorTheme.primary,
            ),
            tabs: [
              getTab('ALL'),
              getTab('UnComplete'),
              getTab('Completed'),
            ],
          ),
        ),
      ),
    );
  }

  getBody() => TabBarView(children: [
        AllTodoScreen(),
        UnCompleteTodoScreen(),
        CompletedTodoScreen(),
      ]);

  getAppBar() => AppBar(
        title: Text('TODO APP'),
        backgroundColor: AppColorTheme.secondary,
      );

  Widget getTab(String label) => Tab(
        child: Text(
          label,
          style: TextStyle(
            fontSize: AppTextTheme.paragraph,
          ),
        ),
      );
}
