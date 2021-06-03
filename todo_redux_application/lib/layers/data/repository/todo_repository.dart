import 'package:flutter/cupertino.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/data/data_source/local/todo_local_datasource.dart';

class TodoRepository {
  final TodoLocalDataSource localDataSource;

  TodoRepository({@required this.localDataSource});

  Future<List<TodoEntity>> getTodoList() async {
    return await localDataSource.getAllTodo();
  }

  Future<void> addNewTodo(TodoEntity todo) async {
    await localDataSource.addNewTodo(todo);
  }
}
