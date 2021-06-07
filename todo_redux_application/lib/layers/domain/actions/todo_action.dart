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

abstract class AddNewTodoAction
    implements TodoAction, Built<AddNewTodoAction, AddNewTodoActionBuilder> {
  TodoEntity get todo;

  AddNewTodoAction._();

  factory AddNewTodoAction([void Function(AddNewTodoActionBuilder) updates]) =
      _$AddNewTodoAction;
}

abstract class AddNewTodoFailedAction
    implements
        TodoAction,
        Built<AddNewTodoFailedAction, AddNewTodoFailedActionBuilder> {
  TodoEntity get todo;

  AddNewTodoFailedAction._();

  factory AddNewTodoFailedAction(
          [void Function(AddNewTodoFailedActionBuilder) updates]) =
      _$AddNewTodoFailedAction;
}

abstract class AddNewTodoSuccessAction
    implements
        TodoAction,
        Built<AddNewTodoSuccessAction, AddNewTodoSuccessActionBuilder> {
  AddNewTodoSuccessAction._();

  factory AddNewTodoSuccessAction(
          [void Function(AddNewTodoSuccessActionBuilder) updates]) =
      _$AddNewTodoSuccessAction;
}

// Update To-do Action

abstract class UpdateTodoAction
    implements TodoAction, Built<UpdateTodoAction, UpdateTodoActionBuilder> {
  TodoEntity get todo;

  UpdateTodoAction._();

  factory UpdateTodoAction([void Function(UpdateTodoActionBuilder) updates]) =
      _$UpdateTodoAction;
}

abstract class UpdateTodoSuccessAction
    implements
        TodoAction,
        Built<UpdateTodoSuccessAction, UpdateTodoSuccessActionBuilder> {
  UpdateTodoSuccessAction._();

  factory UpdateTodoSuccessAction(
          [void Function(UpdateTodoSuccessActionBuilder) updates]) =
      _$UpdateTodoSuccessAction;
}

abstract class UpdateTodoFailedAction
    implements
        TodoAction,
        Built<UpdateTodoFailedAction, UpdateTodoFailedActionBuilder> {
  UpdateTodoFailedAction._();

  factory UpdateTodoFailedAction(
          [void Function(UpdateTodoFailedActionBuilder) updates]) =
      _$UpdateTodoFailedAction;
}
