import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';
import 'package:todo_redux_application/layers/presentation/screens/edit_todo_screen.dart';

import 'todo_item_widget.dart';

class TodoListWidget extends StatelessWidget {
  final List<TodoEntity> todoList;

  const TodoListWidget({Key key, @required this.todoList}) : super(key: key);

  void updateTodoHandler(BuildContext context, TodoEntity todo) {
    StoreProvider.of<AppState>(context).dispatch(UpdateTodoAction(todo: todo));
  }

  void editTodoHandler(BuildContext context, TodoEntity todo) {
    Navigator.of(context).pushNamed(
      EditTodoScreen.routeName,
      arguments: EditTodoScreenArgs(
        type: EditTodoType.Update,
        todo: todo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) => TodoItemWidget(
        todo: todoList[index],
        onUpdate: (todo) => updateTodoHandler(context, todo),
        onEdit: (todo) => editTodoHandler(context, todo),
      ),
    );
  }
}
