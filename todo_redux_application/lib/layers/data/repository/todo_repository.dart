import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/data/data_source/local/todo_local_datasource.dart';

abstract class AbstractTodoRepository {
  Future<BuiltList<TodoEntity>> getTodoList();
  Future<void> addNewTodo(TodoEntity todo);
  Future<void> updateTodo(TodoEntity todo);
}

class TodoRepository extends AbstractTodoRepository {
  final TodoLocalDataSource localDataSource;

  TodoRepository({@required this.localDataSource});

  @override
  Future<BuiltList<TodoEntity>> getTodoList() async {
    return await localDataSource.getAllTodo();
  }

  @override
  Future<void> addNewTodo(TodoEntity todo) async {
    await localDataSource.addNewTodo(todo);
  }

  @override
  Future<void> updateTodo(TodoEntity todo) async {
    await localDataSource.updateTodo(todo);
  }
}
