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
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<TodoState> store) {
    return combineEpics<TodoState>([
      loadTodosEpic,
      updateTodoEpic,
      addNewTodoEpic,
    ])(actions, store);
  }

  Stream<dynamic> loadTodosEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
  ) {
    return actions
        .where((action) => action is DoLoadTodosAction)
        .asyncMap((action) async {
      try {
        final todos = await repository.getTodoList();
        return SetLoadTodosSuccessAction(
            (updates) => updates..todoList.addAll(todos));
      } on Exception catch (e) {
        log(e.toString());
        return SetLoadTodosFailedAction();
      }
    });
  }

  Stream<dynamic> addNewTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
  ) {
    return actions
        .where((action) => action is DoAddNewTodoAction)
        .asyncMap((action) async {
      try {
        await repository.addNewTodo(action.todo);
        return SetAddNewTodoSuccessAction();
      } on Exception catch (e) {
        return SetAddNewTodoFailedAction(
          (updates) => updates.todo = action.todo.toBuilder(),
        );
      }
    });
  }

  Stream<dynamic> updateTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
  ) {
    return actions
        .where((action) => action is DoUpdateTodoAction)
        .asyncMap((action) async {
      try {
        await repository.updateTodo(action.todo);
        return SetUpdateTodoSuccessAction();
      } catch (e) {
        return SetUpdateTodoFailedAction();
      }
    });
  }
}
