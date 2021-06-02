import 'package:flutter/material.dart';
import 'package:todo_redux_architecture/entity/todo_entity.dart';
import 'package:todo_redux_architecture/layers/presentation/theme.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoEntity todo;

  const TodoItemWidget({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: size.width,
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 4),
      decoration: BoxDecoration(
        color: AppColorTheme.grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          getRadioButton(todo.isCompleted),
          const SizedBox(width: 8),
          Text(todo.title),
        ],
      ),
    );
  }

  getRadioButton(bool isCompleted) => InkWell(
        onTap: () {},
        child: Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColorTheme.primary),
          ),
          child: isCompleted
              ? Icon(
                  Icons.check,
                  color: AppColorTheme.primary,
                )
              : Container(),
        ),
      );
}
