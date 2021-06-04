import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';

class TodoEpic {
  final TodoRepository repository;

  TodoEpic({@required this.repository});

  Epic<AppState> get combineEpic => combineEpics([
        loadTodosEpic,
        updateTodoEpic,
        addNewTodoEpic,
      ]);

  Stream<dynamic> loadTodosEpic(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    return actions
        .where((action) => action is LoadTodosAction)
        .asyncMap((action) async {
      try {
        final todos = await repository.getTodoList();
        return LoadTodosSuccessAction(todoList: todos);
      } on Exception catch (e) {
        log(e.toString());
        return LoadTodosFailedAction();
      }
    });
  }

  Stream<dynamic> addNewTodoEpic(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    return actions
        .where((action) => action is AddNewTodoAction)
        .asyncMap((action) async {
      try {
        await repository.addNewTodo(action.todo);
        return AddNewTodoSuccessAction();
      } on Exception catch (e) {
        return AddNewTodoFailedAction(todo: action.todo);
      }
    });
  }

  Stream<dynamic> updateTodoEpic(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) {
    return actions
        .where((action) => action is UpdateTodoAction)
        .asyncMap((action) async {
      try {
        await repository.updateTodo(action.todo);
        return UpdateTodoSuccessAction();
      } catch (e) {
        return UpdateTodoFailedAction();
      }
    });
  }
}

// Stream<dynamic> loadTodosEpic(Stream<dynamic> actions, EpicStore<AppState> store) {
//   return actions.where((event) => event is LoadTodosAction)
//       .asyncMap((event) => )
// }
