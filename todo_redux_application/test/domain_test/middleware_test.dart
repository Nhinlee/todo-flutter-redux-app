import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:test/test.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/middleware/todos_epic.dart';
import 'package:todo_redux_application/layers/domain/state/todo_state.dart';

class TodoRepositoryMock extends Mock implements AbstractTodoRepository {}

class AppStoreMock extends Mock implements Store<AbstractTodoState> {
  final AbstractTodoState todoState;

  AppStoreMock(this.todoState);

  @override
  AbstractTodoState get state => todoState;
}

void main() {
  group('Test todo middleware group', () {
    group('Test load todos group', () {
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);
      runTest({
        Future<BuiltList<TodoEntity>> Function(Invocation) mockAnswer,
        TodoAction action,
        dynamic matcher,
      }) async {
        when(repository.getTodoList()).thenAnswer(mockAnswer);
        Stream<TodoAction> stream = middleware.loadTodosEpic(
            Stream.fromIterable([action]),
            EpicStore<AbstractTodoState>(null));
        expect(
          await stream.toList(),
          matcher,
        );
      }

      test('value type - LoadTodosAction', () {
        expect(
          LoadTodosAction(),
          LoadTodosAction(),
        );
      });

      test('value type - LoadTodosSucessAction', () {
        expect(
          LoadTodosSuccessAction((updates) => updates..todoList = BuiltList<TodoEntity>().toBuilder()),
          LoadTodosSuccessAction((updates) => updates..todoList = BuiltList<TodoEntity>().toBuilder()),
        );
      });

      // Test
      test('local db don' 't have todo', () async {
        await runTest(
            action: LoadTodosAction(),
            mockAnswer: (_) async {
              return BuiltList<TodoEntity>();
            },
            matcher: [
              LoadTodosSuccessAction((updates) => updates..todoList = BuiltList<TodoEntity>().toBuilder()),
            ]);
      });
    });
    // ------------------------------------------------------
  });
}
