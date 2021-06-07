import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:test/test.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/reducer/app_reducer.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

void main() {
  group('Test Todo Reducer', () {
    test('load todos', () {
      // Setup
      final state = TodoState.initial();
      final store = Store<TodoState>(appReducer, initialState: state);
      // Actions
      final action = LoadTodosAction();
      // Dispatch
      store.dispatch(action);
      // Test
      expect(store.state.todoList, BuiltList<TodoEntity>([]));
    });

    test('create new todo', () {
      // Setup
      final state = TodoState.initial();
      final store = Store<TodoState>(appReducer, initialState: state);
      // Actions
      final mockTodo = TodoEntity(
        (updates) => updates
          ..id = 1
          ..title = 'test'
          ..isCompleted = false,
      );
      final action =
          AddNewTodoAction((updates) => updates.todo = mockTodo.toBuilder());
      // Dispatch
      store.dispatch(action);
      // Test
      expect(store.state.todoList, BuiltList<TodoEntity>([mockTodo]));
    });

    test('update todo', () {
      // Setup
      TodoState state = TodoState.initial();
      final mockTodo = TodoEntity(
        (updates) => updates
          ..id = 1
          ..title = 'test'
          ..isCompleted = false,
      );
      state = state.rebuild((updates) => updates..todoList.add(mockTodo));
      final store = Store<TodoState>(appReducer, initialState: state);
      // Actions
      final updateTodo =
          mockTodo.rebuild((updates) => updates..title = 'updated title');
      final action =
          UpdateTodoAction((updates) => updates.todo = updateTodo.toBuilder());
      // Dispatch
      store.dispatch(action);
      // Test
      expect(store.state.todoList, BuiltList<TodoEntity>([updateTodo]));
    });
  });
}
