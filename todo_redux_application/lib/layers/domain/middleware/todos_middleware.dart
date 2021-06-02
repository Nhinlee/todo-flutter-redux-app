import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';

List<Middleware<AppState>> createStoreTodosMiddleware(TodoRepository repos) {

  final loadTodo = _loadTodosMiddleware(repos);

  return [
    TypedMiddleware<AppState, LoadTodosAction>(loadTodo),
  ];
}

Middleware<AppState> _loadTodosMiddleware(TodoRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    try {
      log('start load todos');
      final todos = await repository.getTodoList();
      log('complete loaded todos');
      // Success
      store.dispatch(LoadTodosSuccessAction(todoList: todos));
    } on Exception catch (e) {
      log(e.toString());
      // Fail
      store.dispatch(LoadTodosFailedAction());
    }
  };
}