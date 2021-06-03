import 'package:flutter/material.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';

import '../theme/theme.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoEntity todo;
  final Function(TodoEntity todo) onUpdate;
  final Function(TodoEntity todo) onEdit;

  const TodoItemWidget({
    Key key,
    @required this.todo,
    this.onEdit,
    this.onUpdate,
  }) : super(key: key);

  void _toggleTodoComplete() {
    onUpdate?.call(todo.rebuild(
      (preTodo) => preTodo..isCompleted = !preTodo.isCompleted,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => onEdit?.call(todo),
      child: Container(
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
      ),
    );
  }

  getRadioButton(bool isCompleted) => InkWell(
        onTap: _toggleTodoComplete,
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
