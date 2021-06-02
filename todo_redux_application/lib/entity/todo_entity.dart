import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todo_entity.g.dart';

abstract class TodoEntity implements Built<TodoEntity, TodoEntityBuilder> {
  String get id;
  String get title;
  DateTime get createTime;
  bool get isCompleted;

  @nullable
  String get desc;


  TodoEntity._();

  factory TodoEntity([void Function(TodoEntityBuilder) updates]) = _$TodoEntity;
}
