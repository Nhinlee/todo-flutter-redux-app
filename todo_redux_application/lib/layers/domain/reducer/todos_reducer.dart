import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final todosReducer = combineReducers<BuiltList<TodoEntity>>([
  TypedReducer<BuiltList<TodoEntity>, LoadTodosSuccessAction>(_setLoadedTodo),
  TypedReducer<BuiltList<TodoEntity>, LoadTodosFailedAction>(_setNoTodo),
  TypedReducer<BuiltList<TodoEntity>, AddNewTodoAction>(_addNewTodo),
  TypedReducer<BuiltList<TodoEntity>, AddNewTodoFailedAction>(_addNewTodoRollback),
  TypedReducer<BuiltList<TodoEntity>, UpdateTodoAction>(_updateTodo),
]);

BuiltList<TodoEntity> _setLoadedTodo(
    BuiltList<TodoEntity> state, LoadTodosSuccessAction action) {
  return action.todoList;
}

BuiltList<TodoEntity> _setNoTodo(
    BuiltList<TodoEntity> state, LoadTodosFailedAction action) {
  return [].build();
}

BuiltList<TodoEntity> _addNewTodo(
    BuiltList<TodoEntity> state, AddNewTodoAction action) {
  return state.rebuild((list) => list..add(action.todo));
}

BuiltList<TodoEntity> _addNewTodoRollback(
    BuiltList<TodoEntity> state, AddNewTodoFailedAction action) {
  return state.rebuild((list) => list..remove(action.todo));
}

BuiltList<TodoEntity> _updateTodo(
    BuiltList<TodoEntity> state, UpdateTodoAction action) {
  final updateTodoIndex = state.indexWhere((todo) => todo.id == action.todo.id);

  state.rebuild((list) => list
    ..[updateTodoIndex].rebuild(
      (preTodo) => preTodo
        ..title = action.todo.title
        ..desc = action.todo.desc
        ..isCompleted = action.todo.isCompleted
        ..isFavorite = action.todo.isFavorite,
    ));
  return state;
}
