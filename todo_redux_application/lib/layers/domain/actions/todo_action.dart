import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

part 'todo_action.g.dart';

abstract class TodoAction {}

// Load To-do Action
abstract class DoLoadTodosAction
    implements TodoAction, Built<DoLoadTodosAction, DoLoadTodosActionBuilder> {
  DoLoadTodosAction._();

  factory DoLoadTodosAction([void Function(DoLoadTodosActionBuilder) updates]) =
      _$DoLoadTodosAction;
}

class SetLoadTodosFailedAction implements TodoAction {}

abstract class SetLoadTodosSuccessAction
    implements
        TodoAction,
        Built<SetLoadTodosSuccessAction, SetLoadTodosSuccessActionBuilder> {
  BuiltList<TodoEntity> get todoList;

  SetLoadTodosSuccessAction._();

  factory SetLoadTodosSuccessAction(
          [void Function(SetLoadTodosSuccessActionBuilder) updates]) =
      _$SetLoadTodosSuccessAction;
}

// Add New To-do Action

abstract class DoAddNewTodoAction
    implements
        TodoAction,
        Built<DoAddNewTodoAction, DoAddNewTodoActionBuilder> {
  TodoEntity get todo;

  DoAddNewTodoAction._();

  factory DoAddNewTodoAction(
          [void Function(DoAddNewTodoActionBuilder) updates]) =
      _$DoAddNewTodoAction;
}

abstract class SetAddNewTodoFailedAction
    implements
        TodoAction,
        Built<SetAddNewTodoFailedAction, SetAddNewTodoFailedActionBuilder> {
  TodoEntity get todo;

  SetAddNewTodoFailedAction._();

  factory SetAddNewTodoFailedAction(
          [void Function(SetAddNewTodoFailedActionBuilder) updates]) =
      _$SetAddNewTodoFailedAction;
}

abstract class SetAddNewTodoSuccessAction
    implements
        TodoAction,
        Built<SetAddNewTodoSuccessAction, SetAddNewTodoSuccessActionBuilder> {
  SetAddNewTodoSuccessAction._();

  factory SetAddNewTodoSuccessAction(
          [void Function(SetAddNewTodoSuccessActionBuilder) updates]) =
      _$SetAddNewTodoSuccessAction;
}

// Update To-do Action

abstract class DoUpdateTodoAction
    implements
        TodoAction,
        Built<DoUpdateTodoAction, DoUpdateTodoActionBuilder> {
  TodoEntity get todo;

  DoUpdateTodoAction._();

  factory DoUpdateTodoAction(
          [void Function(DoUpdateTodoActionBuilder) updates]) =
      _$DoUpdateTodoAction;
}

abstract class SetUpdateTodoSuccessAction
    implements
        TodoAction,
        Built<SetUpdateTodoSuccessAction, SetUpdateTodoSuccessActionBuilder> {
  SetUpdateTodoSuccessAction._();

  factory SetUpdateTodoSuccessAction(
          [void Function(SetUpdateTodoSuccessActionBuilder) updates]) =
      _$SetUpdateTodoSuccessAction;
}

abstract class SetUpdateTodoFailedAction
    implements
        TodoAction,
        Built<SetUpdateTodoFailedAction, SetUpdateTodoFailedActionBuilder> {
  SetUpdateTodoFailedAction._();

  factory SetUpdateTodoFailedAction(
          [void Function(SetUpdateTodoFailedActionBuilder) updates]) =
      _$SetUpdateTodoFailedAction;
}
