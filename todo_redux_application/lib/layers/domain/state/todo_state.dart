import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

part 'todo_state.g.dart';


abstract class TodoState
    implements Built<TodoState, TodoStateBuilder> {
  BuiltList<TodoEntity> get todoList;
  bool get isLoading;

  TodoState._();

  factory TodoState.initial() {
    return TodoState(
      (todo) => todo
        ..todoList = BuiltList<TodoEntity>().toBuilder()
        ..isLoading = false,
    );
  }

  factory TodoState([void Function(TodoStateBuilder) updates]) = _$TodoState;
}
