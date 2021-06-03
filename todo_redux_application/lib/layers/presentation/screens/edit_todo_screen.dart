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
  final TodoEntity todo;

  EditTodoScreenArgs({
    this.type = EditTodoType.AddNew,
    this.todo,
  });
}

class EditTodoScreen extends StatefulWidget {
  static const String routeName = 'add-edit-todo-screen';

  final EditTodoScreenArgs args;

  EditTodoScreen({Key key, @required this.args}) : super(key: key);

  @override
  _EditTodoScreenState createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final _titleController = TextEditingController();

  final _descController = TextEditingController();

  void _submitHandler(BuildContext context) {
    if (widget.args.type == EditTodoType.AddNew) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(
        AddNewTodoAction(
          todo: TodoEntity(
            (todo) => todo
              ..id = ++TodoEntity.currentMaxId
              ..title = _titleController.text
              ..desc = _descController.text
              ..isCompleted = false
              ..isFavorite = false,
          ),
        ),
      );
    } else if (widget.args.type == EditTodoType.Update) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(
        UpdateTodoAction(
          todo: widget.args.todo.rebuild(
            (todo) => todo
              ..title = _titleController.text
              ..desc = _descController.text,
          ),
        ),
      );
    }

    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    // Init text controller
    if (widget.args.type == EditTodoType.Update) {
      _titleController.text = widget.args.todo.title;
      _descController.text = widget.args.todo.desc;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: widget.args.type == EditTodoType.AddNew
            ? 'ADD NEW TODO'
            : 'EDIT TODO',
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
        child: widget.args.type == EditTodoType.AddNew
            ? Icon(Icons.add)
            : Icon(Icons.save_alt),
      );
}
