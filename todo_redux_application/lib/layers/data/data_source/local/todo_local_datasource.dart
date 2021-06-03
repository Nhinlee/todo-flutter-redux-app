import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:todo_redux_application/core/sqlite/sqlite_helper.dart';
import 'package:todo_redux_application/core/sqlite/table_helper.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

class TodoLocalDataSource {
  final SQLiteHelper sqLiteHelper;

  TodoLocalDataSource({@required this.sqLiteHelper});

  Future<List<TodoEntity>> getAllTodo() async {
    try {
      final rows = await sqLiteHelper.getAll(TodoTableHelper.tableName);
      return rows.length > 0
          ? rows.map((row) => TodoEntity.fromMap(row)).toList()
          : [];
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  Future<void> addNewTodo(TodoEntity todo) async {
    try {
      await sqLiteHelper.insert(TodoTableHelper.tableName, row: todo.toMap());
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }
}
