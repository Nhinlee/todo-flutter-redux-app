import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/mock_data/mock_todo_list.dart';

class TodoRepository {
  Future<List<TodoEntity>> getTodoList() async {
    // Just for testing purpose
    await Future.delayed(Duration(seconds: 2));
    return MockTodoList.todoList;
  }
}
