import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/core/sqlite/sqlite_helper.dart';
import 'package:todo_redux_application/layers/data/data_source/local/todo_local_datasource.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';

import 'layers/domain/middleware/todos_middleware.dart';
import 'layers/domain/reducer/app_reducer.dart';
import 'layers/domain/state/app_state.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton(() => TodoRepository(localDataSource: sl()));
  // Data source
  sl.registerLazySingleton(() => TodoLocalDataSource(sqLiteHelper: sl()));

  // Core! -------------------------------------------------------------

  // Store Singleton
  sl.registerLazySingleton(() => Store<AppState>(
        appReducer,
        initialState: AppState((state) => state
          ..todoList = []
          ..isLoading = false),
        middleware: createStoreTodosMiddleware(sl()),
      ));

  // Sql Singleton
  sl.registerLazySingleton(() => SQLiteHelper());
  await sl<SQLiteHelper>().open();
}
