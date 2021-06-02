import 'package:built_value/built_value.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  List<TodoEntity> get todoList;
  bool get isLoading;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}