import 'dart:async';
import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:todo_redux_application/core/sqlite/table_helper.dart';

class SQLiteHelper {
  final String todoDBName = 'todo.db';

  Database _db;
  Database get db => _db;

  Future<void> open() async {
    try {
      final dbPath = await getDatabasesPath();
      final path = '$dbPath/$todoDBName';
      _db = await openDatabase(path, version: 1, onCreate: _onCreate, );
    } catch(e) {
      log(e.toString());
    }
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    // Create table
    final batch = db.batch();
    _createTodoTable(batch);

    // Commit
    await batch.commit();
  }

  void _createTodoTable(Batch batch) {
    batch.execute('DROP TABLE IF EXISTS ${TodoTableHelper.tableName}');

    // create sql query
    final String todoTableSql = '''create table ${TodoTableHelper.tableName} (
      ${TodoTableHelper.colId} integer primary key autoincrement, 
      ${TodoTableHelper.colTitle} text not null, 
      ${TodoTableHelper.colIsCompleted} integer not null,
      ${TodoTableHelper.colDesc} text, 
      ${TodoTableHelper.colIsFavorite} integer
    )''';
    batch.execute(todoTableSql);
  }

  Future<List<Map>> getAll(String table) async {
    return await _db.query(table);
  }

  Future<void> insert(String table, {Map<String, dynamic> row}) async {
    await _db.insert(table, row);
  }

  Future<void> update(String table,
      {Map<String, dynamic> row, String where, int whereArg}) async {
    // This is just for table have one primary key!
    await _db.update(table, row, where: '$where = ?', whereArgs: [whereArg]);
  }

  Future<int> delete(String table, {String where, int whereArg}) async {
    // This is just for table have one primary key!
    return await _db.delete(table, where: '$where = ?', whereArgs: [whereArg]);
  }

  Future<void> close() async => _db.close();
}