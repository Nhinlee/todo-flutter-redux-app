import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_redux_application/core/sqlite/table_helper.dart';

part 'todo_entity.g.dart';

abstract class TodoEntity implements Built<TodoEntity, TodoEntityBuilder> {
  static int nextId = 0;

  int get id;

  String get title;

  bool get isCompleted;

  @nullable
  String get desc;

  @nullable
  bool get isFavorite;

  TodoEntity._();

  factory TodoEntity([void Function(TodoEntityBuilder) updates]) = _$TodoEntity;

  factory TodoEntity.fromMap(Map<String, dynamic> map) {
    return TodoEntity(
      (todo) => todo
        ..id = map[TodoTableHelper.colId]
        ..title = map[TodoTableHelper.colTitle]
        ..desc = map[TodoTableHelper.colDesc]
        ..isCompleted = map[TodoTableHelper.colIsCompleted] == 1 ? true : false
        ..isFavorite = map[TodoTableHelper.colIsFavorite] == 1 ? true : false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      TodoTableHelper.colTitle: this.title,
      TodoTableHelper.colDesc: this.desc,
      TodoTableHelper.colIsCompleted: this.isCompleted ? 1 : 0,
      TodoTableHelper.colIsFavorite: this.isFavorite ? 1 : 0,
    };
  }
}
