import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

part 'todo_action.g.dart';

abstract class TodoAction {}

// Load To-do Action
abstract class LoadTodosAction
    implements TodoAction, Built<LoadTodosAction, LoadTodosActionBuilder> {
  LoadTodosAction._();

  factory LoadTodosAction([void Function(LoadTodosActionBuilder) updates]) =
      _$LoadTodosAction;
}

class LoadTodosFailedAction implements TodoAction {}

abstract class LoadTodosSuccessAction
    implements
        TodoAction,
        Built<LoadTodosSuccessAction, LoadTodosSuccessActionBuilder> {
  BuiltList<TodoEntity> get todoList;

  LoadTodosSuccessAction._();

  factory LoadTodosSuccessAction(
          [void Function(LoadTodosSuccessActionBuilder) updates]) =
      _$LoadTodosSuccessAction;
}

// Add New To-do Action

class AddNewTodoAction implements TodoAction {
  final TodoEntity todo;

  AddNewTodoAction({@required this.todo});
}

class AddNewTodoFailedAction implements TodoAction {
  final TodoEntity todo;

  AddNewTodoFailedAction({@required this.todo});
}

class AddNewTodoSuccessAction implements TodoAction {}

// Update To-do Action

class UpdateTodoAction implements TodoAction {
  final TodoEntity todo;

  UpdateTodoAction({@required this.todo});
}

class UpdateTodoSuccessAction implements TodoAction {}

class UpdateTodoFailedAction implements TodoAction {}
