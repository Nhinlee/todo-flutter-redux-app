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

class AppStoreMock extends Mock implements Store<TodoState> {
  final TodoState todoState;

  AppStoreMock(this.todoState);

  @override
  TodoState get state => todoState;
}

void main() {
  group('Test todo middleware group', () {
    group('Test load todos group', () {
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);

      test('local db don' 't have todo', () async {
        // GIVE
        final action = DoLoadTodoAction();

        // WHEN
        when(repository.getTodoList()).thenAnswer(
          (realInvocation) async => BuiltList<TodoEntity>(),
        );
        Stream<dynamic> actual = middleware.loadTodosEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetLoadSuccessTodoAction(
              (updates) =>
                  updates..todoList = BuiltList<TodoEntity>([]).toBuilder(),
            ),
          ],
        );
      });

      test('local db have todo', () async {
        // GIVE
        final action = DoLoadTodoAction();
        final mockTodoList = BuiltList<TodoEntity>([
          TodoEntity((updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false)
        ]);

        // WHEN
        when(repository.getTodoList()).thenAnswer(
          (realInvocation) async => BuiltList<TodoEntity>(mockTodoList),
        );
        Stream<dynamic> actual = middleware.loadTodosEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetLoadSuccessTodoAction(
              (updates) => updates
                ..todoList = BuiltList<TodoEntity>(mockTodoList).toBuilder(),
            ),
          ],
        );
      });
    });
    // ------------------------------------------------------

    group('Test Add New Todo', () {
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);

      test('add new todo success', () async {
        // GIVE
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );
        final action = DoAddNewTodoAction(
          (updates) => updates..todo = mockTodo.toBuilder(),
        );

        // WHEN
        Stream<dynamic> actual = middleware.addNewTodoEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetAddNewSuccessTodoAction(),
          ],
        );
      });

      test('add new todo failed', () async {
        // GIVE
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );
        final action = DoAddNewTodoAction(
          (updates) => updates..todo = mockTodo.toBuilder(),
        );

        // WHEN
        when(repository.addNewTodo(mockTodo))
            .thenAnswer((_) => throw Exception());
        Stream<dynamic> actual = middleware.addNewTodoEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetAddNewFailedTodoAction(
                (updates) => updates.todo = mockTodo.toBuilder()),
          ],
        );
      });
    });
    // ------------------------------------------------------

    group('Test Update Todo', () {
      // Prepare
      final repository = TodoRepositoryMock();
      final middleware = TodoMiddleware(repository: repository);

      test('update todo success', () async {
        // GIVE
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );
        final action = DoUpdateTodoAction(
          (updates) => updates..todo = mockTodo.toBuilder(),
        );

        // WHEN
        Stream<dynamic> actual = middleware.updateTodoEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetUpdateSuccessTodoAction(),
          ],
        );
      });

      test('update todo failed', () async {
        // GIVE
        final mockTodo = TodoEntity(
          (updates) => updates
            ..id = 1
            ..title = 'test'
            ..isCompleted = false,
        );
        final action = DoUpdateTodoAction(
          (updates) => updates..todo = mockTodo.toBuilder(),
        );

        // WHEN
        when(repository.updateTodo(mockTodo))
            .thenAnswer((_) => throw Exception());
        Stream<dynamic> actual = middleware.updateTodoEpic(
          Stream.fromIterable([action]),
          null,
        );

        // THEN
        expect(
          await actual.toList(),
          [
            SetUpdateFailedTodoAction(),
          ],
        );
      });
    });
    //-----------------------------------------------------------
  });
}
