import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, DoLoadTodoAction>(_setLoading),
  TypedReducer<bool, SetLoadSuccessTodoAction>(_setLoaded),
]);

bool _setLoading(bool state, DoLoadTodoAction action ) {
  log('loading');
  return true;
}

bool _setLoaded(bool state, SetLoadSuccessTodoAction action) {
  log('loaded');
  return false;
}
