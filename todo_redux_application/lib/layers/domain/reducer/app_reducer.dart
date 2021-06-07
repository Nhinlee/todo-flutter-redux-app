import 'package:todo_redux_application/layers/domain/reducer/loading_reducer.dart';
import 'package:todo_redux_application/layers/domain/reducer/todos_reducer.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

TodoState appReducer(TodoState state, action) {
  return state.rebuild(
    (preState) => preState
      ..todoList = todosReducer(state.todoList, action).toBuilder()
      ..isLoading = loadingReducer(state.isLoading, action),
  );
}
