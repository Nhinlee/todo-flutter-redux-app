import 'package:flutter/material.dart';
import 'package:todo_redux_architecture/entity/todo_entity.dart';
import 'package:todo_redux_architecture/layers/presentation/widgets/todo_item_widget.dart';

class TodoListWidget extends StatelessWidget {
  final List<TodoEntity> todoList;

  const TodoListWidget({Key? key, required this.todoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) => TodoItemWidget(
        todo: todoList[index],
      ),
    );
  }
}
