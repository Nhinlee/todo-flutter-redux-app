import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/app.dart';
import 'package:todo_redux_application/layers/domain/middleware/todos_middleware.dart';
import 'package:todo_redux_application/layers/domain/reducer/app_reducer.dart';
import 'package:todo_redux_application/layers/domain/repository/todo_repository.dart';

import 'layers/domain/state/app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ReduxApp(
      store: Store<AppState>(
        appReducer,
        // TODO: Refactor this code -> instantiate in another (injection container ??)
        initialState: new AppState((state) => state
          ..todoList = []
          ..isLoading = false),
        middleware: createStoreTodosMiddleware(TodoRepository()),
      ),
    );
  }
}
