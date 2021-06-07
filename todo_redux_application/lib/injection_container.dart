import 'package:built_collection/built_collection.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:todo_redux_application/core/sqlite/sqlite_helper.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/data/data_source/local/todo_local_datasource.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/middleware/todos_middleware.dart';

import 'layers/domain/reducer/app_reducer.dart';
import 'layers/domain/state/todo_state.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton<AbstractTodoRepository>(
    () => TodoRepository(localDataSource: sl()),
  );
  // Data source
  sl.registerLazySingleton(() => TodoLocalDataSource(sqLiteHelper: sl()));

  // Epic
  sl.registerLazySingleton(() => TodoMiddleware(repository: sl()));

  // Core! -------------------------------------------------------------

  // Store Singleton
  sl.registerLazySingleton(() => Store<TodoState>(
        appReducer,
        initialState: TodoState((state) => state
          ..todoList = BuiltList<TodoEntity>([]).toBuilder()
          ..isLoading = false),
        middleware: [EpicMiddleware<AbstractTodoState>(sl<TodoMiddleware>())],
      ));

  // Sql Singleton
  sl.registerLazySingleton(() => SQLiteHelper());
  await sl<SQLiteHelper>().open();
}
