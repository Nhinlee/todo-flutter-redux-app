import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

import 'title_text_widget.dart';
import 'todo_list_widget.dart';

enum FilterTodoType {
  All,
  Completed,
  UnCompleted,
}

class FilteredTodoSkeletonWidget extends StatelessWidget {
  final FilterTodoType type;
  final String title;

  const FilteredTodoSkeletonWidget({
    Key key,
    @required this.title,
    this.type = FilterTodoType.All,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(text: title),
        Expanded(
          child: StoreConnector<TodoState, _ViewModel>(
            converter: _ViewModel.fromStore,
            builder: (context, vm) {
              if (vm.isLoading) {
                return Center(child: CircularProgressIndicator());
              }
              switch (type) {
                case FilterTodoType.All:
                  {
                    return TodoListWidget(todoList: vm.todos.toList());
                  }
                case FilterTodoType.Completed:
                  {
                    return TodoListWidget(
                      todoList:
                          vm.todos.where((todo) => todo.isCompleted).toList(),
                    );
                  }
                case FilterTodoType.UnCompleted:
                  {
                    return TodoListWidget(
                      todoList:
                          vm.todos.where((todo) => !todo.isCompleted).toList(),
                    );
                  }
                default:
                  {
                    return TodoListWidget(todoList: vm.todos.toList());
                  }
              }
            },
          ),
        ),
      ],
    );
  }
}

class _ViewModel {
  final bool isLoading;
  final BuiltList<TodoEntity> todos;

  _ViewModel({
    @required this.isLoading,
    @required this.todos,
  });

  static _ViewModel fromStore(Store<TodoState> store) {
    return _ViewModel(
      isLoading: store.state.isLoading,
      todos: store.state.todoList,
    );
  }
}
