import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final todosReducer = combineReducers<List<TodoEntity>>([
  TypedReducer<List<TodoEntity>, LoadTodosSuccessAction>(_setLoadedTodo),
  TypedReducer<List<TodoEntity>, LoadTodosFailedAction>(_setNoTodo),
  TypedReducer<List<TodoEntity>, AddNewTodoAction>(_addNewTodo),
  TypedReducer<List<TodoEntity>, AddNewTodoFailedAction>(_addNewTodoRollback),
]);

List<TodoEntity> _setLoadedTodo(List<TodoEntity> state, LoadTodosSuccessAction action) {
  return action.todoList;
}

List<TodoEntity> _setNoTodo(List<TodoEntity> state, LoadTodosFailedAction action) {
  return [];
}

List<TodoEntity> _addNewTodo(List<TodoEntity> state, AddNewTodoAction action) {
  return state..add(action.todo);
}

List<TodoEntity> _addNewTodoRollback(List<TodoEntity> state, AddNewTodoFailedAction action) {
  return state..remove(action.todo);
}
