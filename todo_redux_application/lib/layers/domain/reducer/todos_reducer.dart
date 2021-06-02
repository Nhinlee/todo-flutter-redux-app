import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final todosReducer = combineReducers<List<TodoEntity>>([
  TypedReducer<List<TodoEntity>, LoadTodosSuccessAction>(_setLoadedTodo),
  TypedReducer<List<TodoEntity>, LoadTodosFailedAction>(_setNoTodo),
]);

List<TodoEntity> _setLoadedTodo(List<TodoEntity> state, LoadTodosSuccessAction action) {
  return action.todoList;
}

List<TodoEntity> _setNoTodo(List<TodoEntity> state, LoadTodosFailedAction action) {
  return [];
}
