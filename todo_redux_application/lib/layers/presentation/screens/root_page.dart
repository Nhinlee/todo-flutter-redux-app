import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';
import 'package:todo_redux_application/layers/presentation/screens/edit_todo_screen.dart';
import 'package:todo_redux_application/layers/presentation/widgets/my_app_bar.dart';

import '../theme/theme.dart';
import 'all_todo_screen.dart';
import 'complete_todo_screen.dart';
import 'uncomplete_todo_screen.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  void _openNewTodoScreen() {
    Navigator.of(context).pushNamed(
      EditTodoScreen.routeName,
      arguments: EditTodoScreenArgs(),
    );
  }

  @override
  void initState() {
    super.initState();

    // Init
    StoreProvider.of<TodoState>(context, listen: false)
        .dispatch(DoLoadTodoAction());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: MyAppBar(
          title: 'TODO APP',
        ),
        body: getBody(),
        bottomNavigationBar: getTabBar(),
        floatingActionButton: getFloatingActionButton(),
      ),
    );
  }

  getBody() => TabBarView(children: [
        AllTodoScreen(),
        UnCompleteTodoScreen(),
        CompletedTodoScreen(),
      ]);

  getTabBar() => Material(
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
      );

  getTab(String label) => Tab(
        child: Text(
          label,
          style: TextStyle(
            fontSize: AppTextTheme.paragraph,
          ),
        ),
      );

  getFloatingActionButton() => FloatingActionButton(
        onPressed: _openNewTodoScreen,
        child: Icon(Icons.add),
      );
}
