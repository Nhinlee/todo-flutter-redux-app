import 'package:todo_redux_application/entity/todo_entity.dart';

class MockTodoList {
  static List<TodoEntity> todoList = [
    new TodoEntity((b) => b
      ..id = 'todo-1'
      ..title = 'Implement todo app with Redux'
      ..createTime = DateTime.now()
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 'todo-2'
      ..title = 'Design FE Web - Final Project'
      ..createTime = DateTime.now()
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 'todo-3'
      ..title = 'This is Awesome!'
      ..createTime = DateTime.now()
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 'todo-4'
      ..title = 'Impl create event feature'
      ..createTime = DateTime.now()
      ..isCompleted = false),
    new TodoEntity((b) => b
      ..id = 'todo-5'
      ..title = 'Demo for my teacher'
      ..createTime = DateTime.now()
      ..isCompleted = false),
  ];
}
