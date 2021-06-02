
// Load To Do
import 'package:flutter/foundation.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

class LoadTodosAction {}

class LoadTodosFailedAction {}

class LoadTodosSuccessAction {
  final List<TodoEntity> todoList;

  LoadTodosSuccessAction({@required this.todoList});
}

//


