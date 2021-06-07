import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

class TodoMiddleware extends EpicClass<TodoState> {
  final AbstractTodoRepository repository;

  TodoMiddleware({@required this.repository});

  @override
  Stream<TodoAction> call(Stream<dynamic> actions, EpicStore<TodoState> store) {
    return combineEpics<TodoState>([
      loadTodosEpic,
      updateTodoEpic,
      addNewTodoEpic,
    ])(actions, store);
  }

  Stream<TodoAction> loadTodosEpic(
    Stream<dynamic> actions,
    EpicStore<AbstractTodoState> store,
  ) {
    return actions
        .where((action) => action is LoadTodosAction)
        .asyncMap((action) async {
      try {
        final todos = await repository.getTodoList();
        return LoadTodosSuccessAction((updates) => updates..todoList.addAll(todos));
      } on Exception catch (e) {
        log(e.toString());
        return LoadTodosFailedAction();
      }
    });
  }

  Stream<TodoAction> addNewTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
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

  Stream<TodoAction> updateTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
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
