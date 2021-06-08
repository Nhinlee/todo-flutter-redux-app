import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/reducer/app_reducer.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

void main() {
  group('Test Todo Reducer', () {
    test('load todos', () {
      // GIVE
      final initialState = TodoState.initial();
      final expectState = initialState.rebuild(
        (updates) => updates..isLoading = true,
      );

      final action = DoLoadTodoAction();

      // WHEN
      final nextState = appReducer(initialState, action);

      // THEN
      expect(expectState, nextState);
    });

    test('load todos success', () {
      // GIVE
      final initialState = TodoState.initial();
      final expectState = initialState;

      final action = SetLoadSuccessTodoAction();

      // WHEN
      final nextState = appReducer(initialState, action);

      // THEN
      expect(expectState, nextState);
    });

    test('create new todo', () {
      // GIVE
      final mockTodo = TodoEntity(
        (updates) => updates
          ..id = 1
          ..title = 'test'
          ..isCompleted = false,
      );
      final initialState = TodoState.initial();
      final expectState = initialState.rebuild(
        (updates) => updates..todoList.add(mockTodo),
      );

      final action = DoAddNewTodoAction(
        (updates) => updates.todo = mockTodo.toBuilder(),
      );

      // WHEN
      final nextState = appReducer(initialState, action);

      // THEN
      expect(expectState, nextState);
    });

    test('update todo', () {
      // GIVE
      final mockTodo = TodoEntity(
        (updates) => updates
          ..id = 1
          ..title = 'test'
          ..isCompleted = false,
      );
      final updateMockTodo = mockTodo.rebuild(
        (updates) => updates..title = 'updated title',
      );

      final initialState = TodoState.initial().rebuild(
        (updates) => updates..todoList.add(mockTodo),
      );
      final expectState = initialState.rebuild(
        (updates) => updates..todoList = ListBuilder([updateMockTodo]),
      );

      final action = DoUpdateTodoAction(
        (updates) => updates.todo = updateMockTodo.toBuilder(),
      );

      // WHEN
      final nextState = appReducer(initialState, action);

      // THEN
      expect(expectState, nextState);
    });
  });
}
