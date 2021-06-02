import 'package:flutter/material.dart';
import 'package:todo_redux_application/layers/presentation/widgets/title_text_widget.dart';
import 'package:todo_redux_application/layers/presentation/widgets/todo_list_widget.dart';
import 'package:todo_redux_application/mock_data/mock_todo_list.dart';

class CompletedTodoScreen extends StatelessWidget {
  const CompletedTodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(text: 'TODO > All'),
        Expanded(
          child: TodoListWidget(todoList: MockTodoList.todoList),
        ),
      ],
    );
  }
}
