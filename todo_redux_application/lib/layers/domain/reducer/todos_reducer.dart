import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final todosReducer = combineReducers<BuiltList<TodoEntity>>([
  TypedReducer<BuiltList<TodoEntity>, SetLoadTodosSuccessAction>(_setLoadedTodo),
  TypedReducer<BuiltList<TodoEntity>, SetLoadTodosFailedAction>(_setNoTodo),
  TypedReducer<BuiltList<TodoEntity>, DoAddNewTodoAction>(_addNewTodo),
  TypedReducer<BuiltList<TodoEntity>, SetAddNewTodoFailedAction>(
      _addNewTodoRollback),
  TypedReducer<BuiltList<TodoEntity>, DoUpdateTodoAction>(_updateTodo),
]);

BuiltList<TodoEntity> _setLoadedTodo(
    BuiltList<TodoEntity> state, SetLoadTodosSuccessAction action) {
  return action.todoList;
}

BuiltList<TodoEntity> _setNoTodo(
    BuiltList<TodoEntity> state, SetLoadTodosFailedAction action) {
  return [].build();
}

BuiltList<TodoEntity> _addNewTodo(
    BuiltList<TodoEntity> state, DoAddNewTodoAction action) {
  return state.rebuild((list) => list..add(action.todo));
}

BuiltList<TodoEntity> _addNewTodoRollback(
    BuiltList<TodoEntity> state, SetAddNewTodoFailedAction action) {
  return state.rebuild((list) => list..remove(action.todo));
}

BuiltList<TodoEntity> _updateTodo(
    BuiltList<TodoEntity> state, DoUpdateTodoAction action) {
  final updateTodoIndex = state.indexWhere((todo) => todo.id == action.todo.id);

  final newState = state.rebuild(
    (updates) => updates[updateTodoIndex] = updates[updateTodoIndex].rebuild(
      (preTodo) => preTodo
        ..title = action.todo.title
        ..desc = action.todo.desc
        ..isCompleted = action.todo.isCompleted
        ..isFavorite = action.todo.isFavorite,
    ),
  );

  return newState;
}
