import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final todosReducer = combineReducers<List<TodoEntity>>([
  TypedReducer<List<TodoEntity>, LoadTodosSuccessAction>(_setLoadedTodo),
  TypedReducer<List<TodoEntity>, LoadTodosFailedAction>(_setNoTodo),
  TypedReducer<List<TodoEntity>, AddNewTodoAction>(_addNewTodo),
  TypedReducer<List<TodoEntity>, AddNewTodoFailedAction>(_addNewTodoRollback),
  TypedReducer<List<TodoEntity>, UpdateTodoAction>(_updateTodo),
]);

List<TodoEntity> _setLoadedTodo(
    List<TodoEntity> state, LoadTodosSuccessAction action) {
  return action.todoList;
}

List<TodoEntity> _setNoTodo(
    List<TodoEntity> state, LoadTodosFailedAction action) {
  return [];
}

List<TodoEntity> _addNewTodo(List<TodoEntity> state, AddNewTodoAction action) {
  return state..add(action.todo);
}

List<TodoEntity> _addNewTodoRollback(
    List<TodoEntity> state, AddNewTodoFailedAction action) {
  return state..remove(action.todo);
}

List<TodoEntity> _updateTodo(List<TodoEntity> state, UpdateTodoAction action) {
  final updateTodoIndex = state.indexWhere((todo) => todo.id == action.todo.id);
  state[updateTodoIndex] = state[updateTodoIndex].rebuild((preTodo) => preTodo
    ..title = action.todo.title
    ..desc = action.todo.desc
    ..isCompleted = action.todo.isCompleted
    ..isFavorite = action.todo.isFavorite,);
  return state;
}
