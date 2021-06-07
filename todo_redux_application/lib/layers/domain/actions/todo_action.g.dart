// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadTodosAction extends LoadTodosAction {
  factory _$LoadTodosAction([void Function(LoadTodosActionBuilder) updates]) =>
      (new LoadTodosActionBuilder()..update(updates)).build();

  _$LoadTodosAction._() : super._();

  @override
  LoadTodosAction rebuild(void Function(LoadTodosActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadTodosActionBuilder toBuilder() =>
      new LoadTodosActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadTodosAction;
  }

  @override
  int get hashCode {
    return 1062496585;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoadTodosAction').toString();
  }
}

class LoadTodosActionBuilder
    implements Builder<LoadTodosAction, LoadTodosActionBuilder> {
  _$LoadTodosAction _$v;

  LoadTodosActionBuilder();

  @override
  void replace(LoadTodosAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadTodosAction;
  }

  @override
  void update(void Function(LoadTodosActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoadTodosAction build() {
    final _$result = _$v ?? new _$LoadTodosAction._();
    replace(_$result);
    return _$result;
  }
}

class _$LoadTodosSuccessAction extends LoadTodosSuccessAction {
  @override
  final BuiltList<TodoEntity> todoList;

  factory _$LoadTodosSuccessAction(
          [void Function(LoadTodosSuccessActionBuilder) updates]) =>
      (new LoadTodosSuccessActionBuilder()..update(updates)).build();

  _$LoadTodosSuccessAction._({this.todoList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todoList, 'LoadTodosSuccessAction', 'todoList');
  }

  @override
  LoadTodosSuccessAction rebuild(
          void Function(LoadTodosSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadTodosSuccessActionBuilder toBuilder() =>
      new LoadTodosSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadTodosSuccessAction && todoList == other.todoList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoadTodosSuccessAction')
          ..add('todoList', todoList))
        .toString();
  }
}

class LoadTodosSuccessActionBuilder
    implements Builder<LoadTodosSuccessAction, LoadTodosSuccessActionBuilder> {
  _$LoadTodosSuccessAction _$v;

  ListBuilder<TodoEntity> _todoList;
  ListBuilder<TodoEntity> get todoList =>
      _$this._todoList ??= new ListBuilder<TodoEntity>();
  set todoList(ListBuilder<TodoEntity> todoList) => _$this._todoList = todoList;

  LoadTodosSuccessActionBuilder();

  LoadTodosSuccessActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoList = $v.todoList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadTodosSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadTodosSuccessAction;
  }

  @override
  void update(void Function(LoadTodosSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoadTodosSuccessAction build() {
    _$LoadTodosSuccessAction _$result;
    try {
      _$result =
          _$v ?? new _$LoadTodosSuccessAction._(todoList: todoList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todoList';
        todoList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoadTodosSuccessAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddNewTodoAction extends AddNewTodoAction {
  @override
  final TodoEntity todo;

  factory _$AddNewTodoAction(
          [void Function(AddNewTodoActionBuilder) updates]) =>
      (new AddNewTodoActionBuilder()..update(updates)).build();

  _$AddNewTodoAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todo, 'AddNewTodoAction', 'todo');
  }

  @override
  AddNewTodoAction rebuild(void Function(AddNewTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddNewTodoActionBuilder toBuilder() =>
      new AddNewTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddNewTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddNewTodoAction')..add('todo', todo))
        .toString();
  }
}

class AddNewTodoActionBuilder
    implements Builder<AddNewTodoAction, AddNewTodoActionBuilder> {
  _$AddNewTodoAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  AddNewTodoActionBuilder();

  AddNewTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddNewTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddNewTodoAction;
  }

  @override
  void update(void Function(AddNewTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddNewTodoAction build() {
    _$AddNewTodoAction _$result;
    try {
      _$result = _$v ?? new _$AddNewTodoAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddNewTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddNewTodoFailedAction extends AddNewTodoFailedAction {
  @override
  final TodoEntity todo;

  factory _$AddNewTodoFailedAction(
          [void Function(AddNewTodoFailedActionBuilder) updates]) =>
      (new AddNewTodoFailedActionBuilder()..update(updates)).build();

  _$AddNewTodoFailedAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'AddNewTodoFailedAction', 'todo');
  }

  @override
  AddNewTodoFailedAction rebuild(
          void Function(AddNewTodoFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddNewTodoFailedActionBuilder toBuilder() =>
      new AddNewTodoFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddNewTodoFailedAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddNewTodoFailedAction')
          ..add('todo', todo))
        .toString();
  }
}

class AddNewTodoFailedActionBuilder
    implements Builder<AddNewTodoFailedAction, AddNewTodoFailedActionBuilder> {
  _$AddNewTodoFailedAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  AddNewTodoFailedActionBuilder();

  AddNewTodoFailedActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddNewTodoFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddNewTodoFailedAction;
  }

  @override
  void update(void Function(AddNewTodoFailedActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddNewTodoFailedAction build() {
    _$AddNewTodoFailedAction _$result;
    try {
      _$result = _$v ?? new _$AddNewTodoFailedAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddNewTodoFailedAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddNewTodoSuccessAction extends AddNewTodoSuccessAction {
  factory _$AddNewTodoSuccessAction(
          [void Function(AddNewTodoSuccessActionBuilder) updates]) =>
      (new AddNewTodoSuccessActionBuilder()..update(updates)).build();

  _$AddNewTodoSuccessAction._() : super._();

  @override
  AddNewTodoSuccessAction rebuild(
          void Function(AddNewTodoSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddNewTodoSuccessActionBuilder toBuilder() =>
      new AddNewTodoSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddNewTodoSuccessAction;
  }

  @override
  int get hashCode {
    return 364130615;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('AddNewTodoSuccessAction').toString();
  }
}

class AddNewTodoSuccessActionBuilder
    implements
        Builder<AddNewTodoSuccessAction, AddNewTodoSuccessActionBuilder> {
  _$AddNewTodoSuccessAction _$v;

  AddNewTodoSuccessActionBuilder();

  @override
  void replace(AddNewTodoSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddNewTodoSuccessAction;
  }

  @override
  void update(void Function(AddNewTodoSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddNewTodoSuccessAction build() {
    final _$result = _$v ?? new _$AddNewTodoSuccessAction._();
    replace(_$result);
    return _$result;
  }
}

class _$UpdateTodoAction extends UpdateTodoAction {
  @override
  final TodoEntity todo;

  factory _$UpdateTodoAction(
          [void Function(UpdateTodoActionBuilder) updates]) =>
      (new UpdateTodoActionBuilder()..update(updates)).build();

  _$UpdateTodoAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todo, 'UpdateTodoAction', 'todo');
  }

  @override
  UpdateTodoAction rebuild(void Function(UpdateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTodoActionBuilder toBuilder() =>
      new UpdateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateTodoAction')..add('todo', todo))
        .toString();
  }
}

class UpdateTodoActionBuilder
    implements Builder<UpdateTodoAction, UpdateTodoActionBuilder> {
  _$UpdateTodoAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  UpdateTodoActionBuilder();

  UpdateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTodoAction;
  }

  @override
  void update(void Function(UpdateTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateTodoAction build() {
    _$UpdateTodoAction _$result;
    try {
      _$result = _$v ?? new _$UpdateTodoAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateTodoSuccessAction extends UpdateTodoSuccessAction {
  factory _$UpdateTodoSuccessAction(
          [void Function(UpdateTodoSuccessActionBuilder) updates]) =>
      (new UpdateTodoSuccessActionBuilder()..update(updates)).build();

  _$UpdateTodoSuccessAction._() : super._();

  @override
  UpdateTodoSuccessAction rebuild(
          void Function(UpdateTodoSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTodoSuccessActionBuilder toBuilder() =>
      new UpdateTodoSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTodoSuccessAction;
  }

  @override
  int get hashCode {
    return 70157114;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UpdateTodoSuccessAction').toString();
  }
}

class UpdateTodoSuccessActionBuilder
    implements
        Builder<UpdateTodoSuccessAction, UpdateTodoSuccessActionBuilder> {
  _$UpdateTodoSuccessAction _$v;

  UpdateTodoSuccessActionBuilder();

  @override
  void replace(UpdateTodoSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTodoSuccessAction;
  }

  @override
  void update(void Function(UpdateTodoSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateTodoSuccessAction build() {
    final _$result = _$v ?? new _$UpdateTodoSuccessAction._();
    replace(_$result);
    return _$result;
  }
}

class _$UpdateTodoFailedAction extends UpdateTodoFailedAction {
  factory _$UpdateTodoFailedAction(
          [void Function(UpdateTodoFailedActionBuilder) updates]) =>
      (new UpdateTodoFailedActionBuilder()..update(updates)).build();

  _$UpdateTodoFailedAction._() : super._();

  @override
  UpdateTodoFailedAction rebuild(
          void Function(UpdateTodoFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTodoFailedActionBuilder toBuilder() =>
      new UpdateTodoFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTodoFailedAction;
  }

  @override
  int get hashCode {
    return 1034295482;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UpdateTodoFailedAction').toString();
  }
}

class UpdateTodoFailedActionBuilder
    implements Builder<UpdateTodoFailedAction, UpdateTodoFailedActionBuilder> {
  _$UpdateTodoFailedAction _$v;

  UpdateTodoFailedActionBuilder();

  @override
  void replace(UpdateTodoFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTodoFailedAction;
  }

  @override
  void update(void Function(UpdateTodoFailedActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateTodoFailedAction build() {
    final _$result = _$v ?? new _$UpdateTodoFailedAction._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
