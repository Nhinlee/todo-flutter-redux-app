import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/app.dart';
import 'injection_container.dart' as di;

import 'layers/domain/state/todo_state.dart';

void main() async {
  // Widget Binding
  WidgetsFlutterBinding.ensureInitialized();

  // Injection dependency
  await di.init();

  // Run app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ReduxApp(
      store: di.sl<Store<TodoState>>(),
    );
  }
}
