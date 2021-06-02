import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';

import 'layers/presentation/screens/root_page.dart';

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  const ReduxApp({Key key,@required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootPage(),
      ),
    );
  }
}
