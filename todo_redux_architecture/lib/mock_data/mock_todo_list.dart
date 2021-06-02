import 'package:todo_redux_architecture/entity/todo_entity.dart';

class MockTodoList {
  static List<TodoEntity> todoList = [
    TodoEntity(
      id: 'todo-1',
      title: 'Implement Todo App',
      desc: 'This is my first jobs at Manabie',
    ),
    TodoEntity(
      id: 'todo-2',
      title: 'Design FE Web - Final Project',
      desc: 'This is my first jobs at Manabie',
    ),
    TodoEntity(
      id: 'todo-3',
      title: 'This is Awesome!',
      desc: 'This is my first jobs at Manabie',
    ),
    TodoEntity(
      id: 'todo-4',
      title: 'Impl create event feature',
      desc: 'This is my first jobs at Manabie',
    ),
    TodoEntity(
      id: 'todo-5',
      title: 'Demo for my teacher',
      desc: 'This is my first jobs at Manabie',
    ),
  ];
}
