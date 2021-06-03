import 'package:flutter/material.dart';
import 'package:todo_redux_application/layers/presentation/widgets/filtered_todo_skeleton_widget.dart';

class UnCompleteTodoScreen extends StatelessWidget {
  const UnCompleteTodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilteredTodoSkeletonWidget(
      title: 'TODO > UnComplete',
      type: FilterTodoType.UnCompleted,
    );
  }
}
