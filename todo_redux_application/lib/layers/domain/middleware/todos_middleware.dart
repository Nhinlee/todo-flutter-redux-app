import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';

List<Middleware<AppState>> createStoreTodosMiddleware(TodoRepository repos) {
  final loadTodo = _loadTodosMiddleware(repos);
  final saveTodo = _saveTodoMiddleware(repos);

  return [
    TypedMiddleware<AppState, LoadTodosAction>(loadTodo),
    TypedMiddleware<AppState, AddNewTodoAction>(saveTodo),
    TypedMiddleware<AppState, UpdateTodoAction>(saveTodo),
  ];
}

Middleware<AppState> _loadTodosMiddleware(TodoRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    try {
      final todos = await repository.getTodoList();
      store.dispatch(LoadTodosSuccessAction(todoList: todos));
    } on Exception catch (e) {
      log(e.toString());
      store.dispatch(LoadTodosFailedAction());
    }
  };
}

Middleware<AppState> _saveTodoMiddleware(TodoRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    if (action is AddNewTodoAction) {
      try {
        await repository.addNewTodo(action.todo);
        store.dispatch(AddNewTodoSuccessAction());
      } on Exception catch (e) {
        store.dispatch(AddNewTodoFailedAction(
          todo: action.todo,
        ));
      }
    }

    if (action is UpdateTodoAction) {
      try {
        await repository.updateTodo(action.todo);
        store.dispatch(UpdateTodoSuccessAction());
      } catch (e)  {
        store.dispatch(UpdateTodoFailedAction());
      }
    }
  };
}
