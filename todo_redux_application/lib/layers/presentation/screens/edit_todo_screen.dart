import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';
import 'package:todo_redux_application/layers/presentation/widgets/edit_todo_text_field.dart';
import 'package:todo_redux_application/layers/presentation/widgets/my_app_bar.dart';
import 'package:todo_redux_application/layers/presentation/widgets/title_text_widget.dart';

enum EditTodoType {
  AddNew,
  Update,
}

class EditTodoScreenArgs {
  final EditTodoType type;
  final String title;
  final String desc;

  EditTodoScreenArgs({
    this.type = EditTodoType.AddNew,
    this.title = '',
    this.desc = '',
  });
}

class EditTodoScreen extends StatelessWidget {
  static const String routeName = 'add-edit-todo-screen';

  final EditTodoScreenArgs args;

  EditTodoScreen({Key key, @required this.args}) : super(key: key);

  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  void _submitHandler(BuildContext context) {
    StoreProvider.of<AppState>(context, listen: false).dispatch(
      AddNewTodoAction(
        todo: TodoEntity(
          (todo) => todo
            ..id = ++TodoEntity.nextId
            ..title = _titleController.text
            ..desc = _descController.text
            ..isCompleted = false
            ..isFavorite = false,
        ),
      ),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: args.type == EditTodoType.AddNew ? 'ADD NEW TODO' : 'EDIT TODO',
      ),
      body: getBody(),
      floatingActionButton: getFloatingActionButton(context),
    );
  }

  getBody() => Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleTextWidget(text: 'Todo Title'),
              const SizedBox(height: 8),
              EditTodoTextField(controller: _titleController),
              const SizedBox(height: 32),
              const TitleTextWidget(text: 'Todo Description'),
              EditTodoTextField(
                controller: _descController,
                maxLines: 10,
              ),
            ],
          ),
        ),
      );

  getFloatingActionButton(context) => FloatingActionButton(
        onPressed: () => _submitHandler(context),
        child: args.type == EditTodoType.AddNew
            ? Icon(Icons.add)
            : Icon(Icons.save_alt),
      );
}