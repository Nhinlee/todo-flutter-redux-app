import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

part 'todo_action.g.dart';

abstract class TodoAction {}

// Load To-do Action
abstract class DoLoadTodoAction
    implements TodoAction, Built<DoLoadTodoAction, DoLoadTodoActionBuilder> {
  DoLoadTodoAction._();

  factory DoLoadTodoAction([void Function(DoLoadTodoActionBuilder) updates]) =
      _$DoLoadTodoAction;
}

class SetLoadFailedTodoAction implements TodoAction {}

abstract class SetLoadSuccessTodoAction
    implements
        TodoAction,
        Built<SetLoadSuccessTodoAction, SetLoadSuccessTodoActionBuilder> {
  BuiltList<TodoEntity> get todoList;

  SetLoadSuccessTodoAction._();

  factory SetLoadSuccessTodoAction(
          [void Function(SetLoadSuccessTodoActionBuilder) updates]) =
      _$SetLoadSuccessTodoAction;
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

abstract class SetAddNewFailedTodoAction
    implements
        TodoAction,
        Built<SetAddNewFailedTodoAction, SetAddNewFailedTodoActionBuilder> {
  TodoEntity get todo;

  SetAddNewFailedTodoAction._();

  factory SetAddNewFailedTodoAction(
          [void Function(SetAddNewFailedTodoActionBuilder) updates]) =
      _$SetAddNewFailedTodoAction;
}

abstract class SetAddNewSuccessTodoAction
    implements
        TodoAction,
        Built<SetAddNewSuccessTodoAction, SetAddNewSuccessTodoActionBuilder> {
  SetAddNewSuccessTodoAction._();

  factory SetAddNewSuccessTodoAction(
          [void Function(SetAddNewSuccessTodoActionBuilder) updates]) =
      _$SetAddNewSuccessTodoAction;
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

abstract class SetUpdateSuccessTodoAction
    implements
        TodoAction,
        Built<SetUpdateSuccessTodoAction, SetUpdateSuccessTodoActionBuilder> {
  SetUpdateSuccessTodoAction._();

  factory SetUpdateSuccessTodoAction(
          [void Function(SetUpdateSuccessTodoActionBuilder) updates]) =
      _$SetUpdateSuccessTodoAction;
}

abstract class SetUpdateFailedTodoAction
    implements
        TodoAction,
        Built<SetUpdateFailedTodoAction, SetUpdateFailedTodoActionBuilder> {
  SetUpdateFailedTodoAction._();

  factory SetUpdateFailedTodoAction(
          [void Function(SetUpdateFailedTodoActionBuilder) updates]) =
      _$SetUpdateFailedTodoAction;
}
