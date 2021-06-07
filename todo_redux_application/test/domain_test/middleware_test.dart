import 'package:built_collection/built_collection.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:test/test.dart';
import 'package:todo_redux_application/entity/todo_entity.dart';
import 'package:todo_redux_application/layers/data/repository/todo_repository.dart';
import 'package:todo_redux_application/layers/domain/actions/todo_action.dart';
import 'package:todo_redux_application/layers/domain/middleware/todos_middleware.dart';
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
        LoadTodosAction action,
        List<dynamic> matcher,
      }) async {
        when(repository.getTodoList()).thenAnswer(mockAnswer);
        Stream<dynamic> stream =
            middleware.loadTodosEpic(Stream.fromIterable([action]), null);
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
          LoadTodosSuccessAction((updates) =>
              updates..todoList = BuiltList<TodoEntity>().toBuilder()),
          LoadTodosSuccessAction((updates) =>
              updates..todoList = BuiltList<TodoEntity>().toBuilder()),
        );
      });

      // Test
      test('local db don' 't have todo', () async {
        await runTest(
            action: LoadTodosAction(),
            mockAnswer: (_) async {
              return BuiltList<TodoEntity>([]);
            },
            matcher: [
              LoadTodosSuccessAction((updates) =>
                  updates..todoList = BuiltList<TodoEntity>([]).toBuilder()),
            ]);
      });

      test('local db have todo', () async {
        final mockTodoList = BuiltList<TodoEntity>([
          TodoEntity((updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false)
        ]);

        await runTest(
            action: LoadTodosAction(),
            mockAnswer: (_) async {
              return BuiltList<TodoEntity>(mockTodoList);
            },
            matcher: [
              LoadTodosSuccessAction(
                  (updates) => updates.todoList = mockTodoList.toBuilder())
            ]);
      });
    });
    // ------------------------------------------------------

    group('Test Add New Todo', () {
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);

      runTest({
        AddNewTodoAction action,
        Future<void> Function(Invocation) mockAnswer,
        List<dynamic> matcher,
      }) async {
        // Mock answer
        when(repository.addNewTodo(action.todo)).thenAnswer(mockAnswer);
        // Actual stream
        Stream<dynamic> stream = middleware.addNewTodoEpic(
          Stream.fromIterable([action]),
          null,
        );
        expect(await stream.toList(), matcher);
      }

      test('add new todo success', () async {
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );

        await runTest(
          action: AddNewTodoAction(
            (updates) => updates.todo = mockTodo.toBuilder(),
          ),
          mockAnswer: (_) async {
            return;
          },
          matcher: [AddNewTodoSuccessAction()],
        );
      });

      test('add new todo failed', () async {
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );

        await runTest(
          action: AddNewTodoAction(
            (updates) => updates..todo = mockTodo.toBuilder(),
          ),
          mockAnswer: (_) async {
            throw Exception();
          },
          matcher: [
            AddNewTodoFailedAction(
              (updates) => updates..todo = mockTodo.toBuilder(),
            )
          ],
        );
      });
    });
    // ------------------------------------------------------

    group('Test Update Todo', () {
      // Prepare
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);
      final mockTodo = TodoEntity(
        (updates) => updates
          ..id = 1
          ..title = 'test'
          ..isCompleted = false,
      );
      // Run Test Function
      runTest({
        UpdateTodoAction action,
        Future<void> Function(Invocation) mockAnswer,
        List<dynamic> matcher,
      }) async {
        // Mock answer
        when(repository.updateTodo(action.todo)).thenAnswer(mockAnswer);
        // Actual
        Stream<dynamic> stream = middleware.updateTodoEpic(
          Stream.fromIterable([action]),
          null,
        );
        // Test
        expect(await stream.toList(), matcher);
      }

      test('Test Update Todo Success', () async {
        await runTest(
          action: UpdateTodoAction(
            (updates) => updates..todo = mockTodo.toBuilder(),
          ),
          mockAnswer: (_) async {
            return;
          },
          matcher: [
            UpdateTodoSuccessAction(),
          ],
        );
      });

      test('Test Update Todo Failed', () async {
        await runTest(
          action: UpdateTodoAction(
                (updates) => updates..todo = mockTodo.toBuilder(),
          ),
          mockAnswer: (_) async {
            throw Exception();
          },
          matcher: [
            UpdateTodoFailedAction(),
          ]
        );
      });
    });
  });
}
