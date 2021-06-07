import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, DoLoadTodosAction>(_setLoading),
  TypedReducer<bool, SetLoadTodosSuccessAction>(_setLoaded),
]);

bool _setLoading(bool state, DoLoadTodosAction action ) {
  log('loading');
  return true;
}

bool _setLoaded(bool state, SetLoadTodosSuccessAction action) {
  log('loaded');
  return false;
}
