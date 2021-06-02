import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/state/app_state.dart';
import 'package:todo_redux_application/layers/presentation/widgets/title_text_widget.dart';
import 'package:todo_redux_application/layers/presentation/widgets/todo_list_widget.dart';
import 'package:todo_redux_application/mock_data/mock_todo_list.dart';

class AllTodoScreen extends StatelessWidget {
  const AllTodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        StoreProvider.of<AppState>(context).dispatch(LoadTodosAction());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleTextWidget(text: 'TODO > All'),
          Expanded(
            child: StoreConnector<AppState, _ViewModel>(
              converter: _ViewModel.fromStore,
              builder: (context, vm) {
                log('rebuild');
                if(vm.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                return TodoListWidget(todoList: vm.todos);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ViewModel {
  final bool isLoading;
  final List<TodoEntity> todos;

  _ViewModel({
    @required this.isLoading,
    @required this.todos,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      isLoading: store.state.isLoading,
      todos: store.state.todoList,
    );
  }
}
