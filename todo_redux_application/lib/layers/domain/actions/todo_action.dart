import 'package:flutter/foundation.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

// Load To-do Action
class LoadTodosAction {}

class LoadTodosFailedAction {}

class LoadTodosSuccessAction {
  final List<TodoEntity> todoList;

  LoadTodosSuccessAction({@required this.todoList});
}


// Edit To-do Action

class AddNewTodoAction {
  final TodoEntity todo;

  AddNewTodoAction({@required this.todo});
}

class AddNewTodoFailedAction {
  final TodoEntity todo;

  AddNewTodoFailedAction({@required this.todo});
}

class AddNewTodoSuccessAction {}