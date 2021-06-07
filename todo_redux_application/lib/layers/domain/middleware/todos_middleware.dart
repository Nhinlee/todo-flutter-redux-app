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
  ) async* {
    await for (final action in actions) {
      if (action is DoLoadTodoAction) {
        try {
          final todos = await repository.getTodoList();
          yield SetLoadSuccessTodoAction(
              (updates) => updates..todoList.addAll(todos));
        } on Exception catch (e) {
          log(e.toString());
          yield SetLoadFailedTodoAction();
        }
      }
    }
  }

  Stream<dynamic> addNewTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoAddNewTodoAction) {
        try {
          await repository.addNewTodo(action.todo);
          yield SetAddNewSuccessTodoAction();
        } on Exception catch (e) {
          yield SetAddNewFailedTodoAction(
            (updates) => updates.todo = action.todo.toBuilder(),
          );
        }
      }
    }
  }

  Stream<dynamic> updateTodoEpic(
    Stream<dynamic> actions,
    EpicStore<TodoState> store,
  ) async* {
    await for (final action in actions) {
      if (action is DoUpdateTodoAction) {
        try {
          await repository.updateTodo(action.todo);
          yield SetUpdateSuccessTodoAction();
        } catch (e) {
          yield SetUpdateFailedTodoAction();
        }
      }
    }
  }
}
