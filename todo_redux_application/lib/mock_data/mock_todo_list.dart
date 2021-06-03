import 'package:todo_redux_application/entity/todo_entity.dart';

class MockTodoList {
  static List<TodoEntity> todoList = [
    new TodoEntity((b) => b
      ..id = 1
      ..title = 'Implement todo app with Redux'
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 2
      ..title = 'Design FE Web - Final Project'
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 3
      ..title = 'This is Awesome!'
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 4
      ..title = 'Impl create event feature'
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 5
      ..title = 'Demo for my teacher'
      ..isCompleted = false),
  ];
}
