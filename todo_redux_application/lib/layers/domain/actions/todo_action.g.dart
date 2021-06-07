// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoLoadTodosAction extends DoLoadTodosAction {
  factory _$DoLoadTodosAction(
          [void Function(DoLoadTodosActionBuilder) updates]) =>
      (new DoLoadTodosActionBuilder()..update(updates)).build();

  _$DoLoadTodosAction._() : super._();

  @override
  DoLoadTodosAction rebuild(void Function(DoLoadTodosActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoLoadTodosActionBuilder toBuilder() =>
      new DoLoadTodosActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoLoadTodosAction;
  }

  @override
  int get hashCode {
    return 22783335;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoLoadTodosAction').toString();
  }
}

class DoLoadTodosActionBuilder
    implements Builder<DoLoadTodosAction, DoLoadTodosActionBuilder> {
  _$DoLoadTodosAction _$v;

  DoLoadTodosActionBuilder();

  @override
  void replace(DoLoadTodosAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoLoadTodosAction;
  }

  @override
  void update(void Function(DoLoadTodosActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoLoadTodosAction build() {
    final _$result = _$v ?? new _$DoLoadTodosAction._();
    replace(_$result);
    return _$result;
  }
}

class _$SetLoadTodosSuccessAction extends SetLoadTodosSuccessAction {
  @override
  final BuiltList<TodoEntity> todoList;

  factory _$SetLoadTodosSuccessAction(
          [void Function(SetLoadTodosSuccessActionBuilder) updates]) =>
      (new SetLoadTodosSuccessActionBuilder()..update(updates)).build();

  _$SetLoadTodosSuccessAction._({this.todoList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todoList, 'SetLoadTodosSuccessAction', 'todoList');
  }

  @override
  SetLoadTodosSuccessAction rebuild(
          void Function(SetLoadTodosSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetLoadTodosSuccessActionBuilder toBuilder() =>
      new SetLoadTodosSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetLoadTodosSuccessAction && todoList == other.todoList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetLoadTodosSuccessAction')
          ..add('todoList', todoList))
        .toString();
  }
}

class SetLoadTodosSuccessActionBuilder
    implements
        Builder<SetLoadTodosSuccessAction, SetLoadTodosSuccessActionBuilder> {
  _$SetLoadTodosSuccessAction _$v;

  ListBuilder<TodoEntity> _todoList;
  ListBuilder<TodoEntity> get todoList =>
      _$this._todoList ??= new ListBuilder<TodoEntity>();
  set todoList(ListBuilder<TodoEntity> todoList) => _$this._todoList = todoList;

  SetLoadTodosSuccessActionBuilder();

  SetLoadTodosSuccessActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoList = $v.todoList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetLoadTodosSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetLoadTodosSuccessAction;
  }

  @override
  void update(void Function(SetLoadTodosSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetLoadTodosSuccessAction build() {
    _$SetLoadTodosSuccessAction _$result;
    try {
      _$result =
          _$v ?? new _$SetLoadTodosSuccessAction._(todoList: todoList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todoList';
        todoList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetLoadTodosSuccessAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoAddNewTodoAction extends DoAddNewTodoAction {
  @override
  final TodoEntity todo;

  factory _$DoAddNewTodoAction(
          [void Function(DoAddNewTodoActionBuilder) updates]) =>
      (new DoAddNewTodoActionBuilder()..update(updates)).build();

  _$DoAddNewTodoAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todo, 'DoAddNewTodoAction', 'todo');
  }

  @override
  DoAddNewTodoAction rebuild(
          void Function(DoAddNewTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoAddNewTodoActionBuilder toBuilder() =>
      new DoAddNewTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoAddNewTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoAddNewTodoAction')
          ..add('todo', todo))
        .toString();
  }
}

class DoAddNewTodoActionBuilder
    implements Builder<DoAddNewTodoAction, DoAddNewTodoActionBuilder> {
  _$DoAddNewTodoAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  DoAddNewTodoActionBuilder();

  DoAddNewTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoAddNewTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoAddNewTodoAction;
  }

  @override
  void update(void Function(DoAddNewTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoAddNewTodoAction build() {
    _$DoAddNewTodoAction _$result;
    try {
      _$result = _$v ?? new _$DoAddNewTodoAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoAddNewTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetAddNewTodoFailedAction extends SetAddNewTodoFailedAction {
  @override
  final TodoEntity todo;

  factory _$SetAddNewTodoFailedAction(
          [void Function(SetAddNewTodoFailedActionBuilder) updates]) =>
      (new SetAddNewTodoFailedActionBuilder()..update(updates)).build();

  _$SetAddNewTodoFailedAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'SetAddNewTodoFailedAction', 'todo');
  }

  @override
  SetAddNewTodoFailedAction rebuild(
          void Function(SetAddNewTodoFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAddNewTodoFailedActionBuilder toBuilder() =>
      new SetAddNewTodoFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAddNewTodoFailedAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetAddNewTodoFailedAction')
          ..add('todo', todo))
        .toString();
  }
}

class SetAddNewTodoFailedActionBuilder
    implements
        Builder<SetAddNewTodoFailedAction, SetAddNewTodoFailedActionBuilder> {
  _$SetAddNewTodoFailedAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  SetAddNewTodoFailedActionBuilder();

  SetAddNewTodoFailedActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetAddNewTodoFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetAddNewTodoFailedAction;
  }

  @override
  void update(void Function(SetAddNewTodoFailedActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetAddNewTodoFailedAction build() {
    _$SetAddNewTodoFailedAction _$result;
    try {
      _$result = _$v ?? new _$SetAddNewTodoFailedAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetAddNewTodoFailedAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetAddNewTodoSuccessAction extends SetAddNewTodoSuccessAction {
  factory _$SetAddNewTodoSuccessAction(
          [void Function(SetAddNewTodoSuccessActionBuilder) updates]) =>
      (new SetAddNewTodoSuccessActionBuilder()..update(updates)).build();

  _$SetAddNewTodoSuccessAction._() : super._();

  @override
  SetAddNewTodoSuccessAction rebuild(
          void Function(SetAddNewTodoSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAddNewTodoSuccessActionBuilder toBuilder() =>
      new SetAddNewTodoSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAddNewTodoSuccessAction;
  }

  @override
  int get hashCode {
    return 864782130;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetAddNewTodoSuccessAction').toString();
  }
}

class SetAddNewTodoSuccessActionBuilder
    implements
        Builder<SetAddNewTodoSuccessAction, SetAddNewTodoSuccessActionBuilder> {
  _$SetAddNewTodoSuccessAction _$v;

  SetAddNewTodoSuccessActionBuilder();

  @override
  void replace(SetAddNewTodoSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetAddNewTodoSuccessAction;
  }

  @override
  void update(void Function(SetAddNewTodoSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetAddNewTodoSuccessAction build() {
    final _$result = _$v ?? new _$SetAddNewTodoSuccessAction._();
    replace(_$result);
    return _$result;
  }
}

class _$DoUpdateTodoAction extends DoUpdateTodoAction {
  @override
  final TodoEntity todo;

  factory _$DoUpdateTodoAction(
          [void Function(DoUpdateTodoActionBuilder) updates]) =>
      (new DoUpdateTodoActionBuilder()..update(updates)).build();

  _$DoUpdateTodoAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todo, 'DoUpdateTodoAction', 'todo');
  }

  @override
  DoUpdateTodoAction rebuild(
          void Function(DoUpdateTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoUpdateTodoActionBuilder toBuilder() =>
      new DoUpdateTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoUpdateTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoUpdateTodoAction')
          ..add('todo', todo))
        .toString();
  }
}

class DoUpdateTodoActionBuilder
    implements Builder<DoUpdateTodoAction, DoUpdateTodoActionBuilder> {
  _$DoUpdateTodoAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  DoUpdateTodoActionBuilder();

  DoUpdateTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoUpdateTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoUpdateTodoAction;
  }

  @override
  void update(void Function(DoUpdateTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoUpdateTodoAction build() {
    _$DoUpdateTodoAction _$result;
    try {
      _$result = _$v ?? new _$DoUpdateTodoAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoUpdateTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetUpdateTodoSuccessAction extends SetUpdateTodoSuccessAction {
  factory _$SetUpdateTodoSuccessAction(
          [void Function(SetUpdateTodoSuccessActionBuilder) updates]) =>
      (new SetUpdateTodoSuccessActionBuilder()..update(updates)).build();

  _$SetUpdateTodoSuccessAction._() : super._();

  @override
  SetUpdateTodoSuccessAction rebuild(
          void Function(SetUpdateTodoSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUpdateTodoSuccessActionBuilder toBuilder() =>
      new SetUpdateTodoSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUpdateTodoSuccessAction;
  }

  @override
  int get hashCode {
    return 175401319;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetUpdateTodoSuccessAction').toString();
  }
}

class SetUpdateTodoSuccessActionBuilder
    implements
        Builder<SetUpdateTodoSuccessAction, SetUpdateTodoSuccessActionBuilder> {
  _$SetUpdateTodoSuccessAction _$v;

  SetUpdateTodoSuccessActionBuilder();

  @override
  void replace(SetUpdateTodoSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUpdateTodoSuccessAction;
  }

  @override
  void update(void Function(SetUpdateTodoSuccessActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUpdateTodoSuccessAction build() {
    final _$result = _$v ?? new _$SetUpdateTodoSuccessAction._();
    replace(_$result);
    return _$result;
  }
}

class _$SetUpdateTodoFailedAction extends SetUpdateTodoFailedAction {
  factory _$SetUpdateTodoFailedAction(
          [void Function(SetUpdateTodoFailedActionBuilder) updates]) =>
      (new SetUpdateTodoFailedActionBuilder()..update(updates)).build();

  _$SetUpdateTodoFailedAction._() : super._();

  @override
  SetUpdateTodoFailedAction rebuild(
          void Function(SetUpdateTodoFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUpdateTodoFailedActionBuilder toBuilder() =>
      new SetUpdateTodoFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUpdateTodoFailedAction;
  }

  @override
  int get hashCode {
    return 199619049;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetUpdateTodoFailedAction').toString();
  }
}

class SetUpdateTodoFailedActionBuilder
    implements
        Builder<SetUpdateTodoFailedAction, SetUpdateTodoFailedActionBuilder> {
  _$SetUpdateTodoFailedAction _$v;

  SetUpdateTodoFailedActionBuilder();

  @override
  void replace(SetUpdateTodoFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUpdateTodoFailedAction;
  }

  @override
  void update(void Function(SetUpdateTodoFailedActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUpdateTodoFailedAction build() {
    final _$result = _$v ?? new _$SetUpdateTodoFailedAction._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
