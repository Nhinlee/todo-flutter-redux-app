import 'package:get_it/get_it.dart';
import 'package:todo_redux_application/core/sqlite/sqlite_helper.dart';
import 'package:todo_redux_application/layers/data/data_source/local/todo_local_datasource.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {

  // Repository
  sl.registerLazySingleton(() => TodoRepository(localDataSource: sl()));
  // Data source
  sl.registerLazySingleton(() => TodoLocalDataSource(sqLiteHelper: sl()));

  // Core!
  sl.registerLazySingleton(() => SQLiteHelper());
  await sl<SQLiteHelper>().open();
}