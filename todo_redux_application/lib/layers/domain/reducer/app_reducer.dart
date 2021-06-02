import 'package:todo_redux_application/layers/domain/reducer/loading_reducer.dart';
import 'package:todo_redux_application/layers/domain/reducer/todos_reducer.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild(
    (preState) => preState
      ..todoList = todosReducer(state.todoList, action)
      ..isLoading = loadingReducer(state.isLoading, action),
  );
}
