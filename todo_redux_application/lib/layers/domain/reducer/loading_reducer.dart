import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadTodosAction>(_setLoading),
  TypedReducer<bool, LoadTodosSuccessAction>(_setLoaded),
]);

bool _setLoading(bool state, LoadTodosAction action ) {
  log('loading');
  return true;
}

bool _setLoaded(bool state, LoadTodosSuccessAction action) {
  log('loaded');
  return false;
}
