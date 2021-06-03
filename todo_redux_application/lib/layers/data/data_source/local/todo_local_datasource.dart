import 'dart:developer' as dev;
import 'dart:math';

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
          ? rows.map((row) {
              final newTodo = TodoEntity.fromMap(row);
              TodoEntity.currentMaxId =
                  max(TodoEntity.currentMaxId, newTodo.id);
              return newTodo;
            }).toList()
          : [];
    } catch (e) {
      dev.log(e.toString());
      throw e;
    }
  }

  Future<void> addNewTodo(TodoEntity todo) async {
    try {
      await sqLiteHelper.insert(TodoTableHelper.tableName, row: todo.toMap());
    } catch (e) {
      dev.log(e.toString());
      throw e;
    }
  }

  Future<void> updateTodo(TodoEntity todo) async {
    try {
      await sqLiteHelper.update(
        TodoTableHelper.tableName,
        row: todo.toMap(),
        where: TodoTableHelper.colId,
        whereArg: todo.id,
      );
    } catch (e) {
      dev.log(e.toString());
      throw e;
    }
  }
}
