// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoLoadTodoAction extends DoLoadTodoAction {
  factory _$DoLoadTodoAction(
          [void Function(DoLoadTodoActionBuilder) updates]) =>
      (new DoLoadTodoActionBuilder()..update(updates)).build();

  _$DoLoadTodoAction._() : super._();

  @override
  DoLoadTodoAction rebuild(void Function(DoLoadTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoLoadTodoActionBuilder toBuilder() =>
      new DoLoadTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoLoadTodoAction;
  }

  @override
  int get hashCode {
    return 494638489;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoLoadTodoAction').toString();
  }
}

class DoLoadTodoActionBuilder
    implements Builder<DoLoadTodoAction, DoLoadTodoActionBuilder> {
  _$DoLoadTodoAction _$v;

  DoLoadTodoActionBuilder();

  @override
  void replace(DoLoadTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoLoadTodoAction;
  }

  @override
  void update(void Function(DoLoadTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoLoadTodoAction build() {
    final _$result = _$v ?? new _$DoLoadTodoAction._();
    replace(_$result);
    return _$result;
  }
}

class _$SetLoadSuccessTodoAction extends SetLoadSuccessTodoAction {
  @override
  final BuiltList<TodoEntity> todoList;

  factory _$SetLoadSuccessTodoAction(
          [void Function(SetLoadSuccessTodoActionBuilder) updates]) =>
      (new SetLoadSuccessTodoActionBuilder()..update(updates)).build();

  _$SetLoadSuccessTodoAction._({this.todoList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todoList, 'SetLoadSuccessTodoAction', 'todoList');
  }

  @override
  SetLoadSuccessTodoAction rebuild(
          void Function(SetLoadSuccessTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetLoadSuccessTodoActionBuilder toBuilder() =>
      new SetLoadSuccessTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetLoadSuccessTodoAction && todoList == other.todoList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetLoadSuccessTodoAction')
          ..add('todoList', todoList))
        .toString();
  }
}

class SetLoadSuccessTodoActionBuilder
    implements
        Builder<SetLoadSuccessTodoAction, SetLoadSuccessTodoActionBuilder> {
  _$SetLoadSuccessTodoAction _$v;

  ListBuilder<TodoEntity> _todoList;
  ListBuilder<TodoEntity> get todoList =>
      _$this._todoList ??= new ListBuilder<TodoEntity>();
  set todoList(ListBuilder<TodoEntity> todoList) => _$this._todoList = todoList;

  SetLoadSuccessTodoActionBuilder();

  SetLoadSuccessTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoList = $v.todoList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetLoadSuccessTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetLoadSuccessTodoAction;
  }

  @override
  void update(void Function(SetLoadSuccessTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetLoadSuccessTodoAction build() {
    _$SetLoadSuccessTodoAction _$result;
    try {
      _$result =
          _$v ?? new _$SetLoadSuccessTodoAction._(todoList: todoList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todoList';
        todoList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetLoadSuccessTodoAction', _$failedField, e.toString());
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

class _$SetAddNewFailedTodoAction extends SetAddNewFailedTodoAction {
  @override
  final TodoEntity todo;

  factory _$SetAddNewFailedTodoAction(
          [void Function(SetAddNewFailedTodoActionBuilder) updates]) =>
      (new SetAddNewFailedTodoActionBuilder()..update(updates)).build();

  _$SetAddNewFailedTodoAction._({this.todo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        todo, 'SetAddNewFailedTodoAction', 'todo');
  }

  @override
  SetAddNewFailedTodoAction rebuild(
          void Function(SetAddNewFailedTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAddNewFailedTodoActionBuilder toBuilder() =>
      new SetAddNewFailedTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAddNewFailedTodoAction && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetAddNewFailedTodoAction')
          ..add('todo', todo))
        .toString();
  }
}

class SetAddNewFailedTodoActionBuilder
    implements
        Builder<SetAddNewFailedTodoAction, SetAddNewFailedTodoActionBuilder> {
  _$SetAddNewFailedTodoAction _$v;

  TodoEntityBuilder _todo;
  TodoEntityBuilder get todo => _$this._todo ??= new TodoEntityBuilder();
  set todo(TodoEntityBuilder todo) => _$this._todo = todo;

  SetAddNewFailedTodoActionBuilder();

  SetAddNewFailedTodoActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todo = $v.todo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetAddNewFailedTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetAddNewFailedTodoAction;
  }

  @override
  void update(void Function(SetAddNewFailedTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetAddNewFailedTodoAction build() {
    _$SetAddNewFailedTodoAction _$result;
    try {
      _$result = _$v ?? new _$SetAddNewFailedTodoAction._(todo: todo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetAddNewFailedTodoAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetAddNewSuccessTodoAction extends SetAddNewSuccessTodoAction {
  factory _$SetAddNewSuccessTodoAction(
          [void Function(SetAddNewSuccessTodoActionBuilder) updates]) =>
      (new SetAddNewSuccessTodoActionBuilder()..update(updates)).build();

  _$SetAddNewSuccessTodoAction._() : super._();

  @override
  SetAddNewSuccessTodoAction rebuild(
          void Function(SetAddNewSuccessTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAddNewSuccessTodoActionBuilder toBuilder() =>
      new SetAddNewSuccessTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAddNewSuccessTodoAction;
  }

  @override
  int get hashCode {
    return 660092170;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetAddNewSuccessTodoAction').toString();
  }
}

class SetAddNewSuccessTodoActionBuilder
    implements
        Builder<SetAddNewSuccessTodoAction, SetAddNewSuccessTodoActionBuilder> {
  _$SetAddNewSuccessTodoAction _$v;

  SetAddNewSuccessTodoActionBuilder();

  @override
  void replace(SetAddNewSuccessTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetAddNewSuccessTodoAction;
  }

  @override
  void update(void Function(SetAddNewSuccessTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetAddNewSuccessTodoAction build() {
    final _$result = _$v ?? new _$SetAddNewSuccessTodoAction._();
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

class _$SetUpdateSuccessTodoAction extends SetUpdateSuccessTodoAction {
  factory _$SetUpdateSuccessTodoAction(
          [void Function(SetUpdateSuccessTodoActionBuilder) updates]) =>
      (new SetUpdateSuccessTodoActionBuilder()..update(updates)).build();

  _$SetUpdateSuccessTodoAction._() : super._();

  @override
  SetUpdateSuccessTodoAction rebuild(
          void Function(SetUpdateSuccessTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUpdateSuccessTodoActionBuilder toBuilder() =>
      new SetUpdateSuccessTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUpdateSuccessTodoAction;
  }

  @override
  int get hashCode {
    return 958562050;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetUpdateSuccessTodoAction').toString();
  }
}

class SetUpdateSuccessTodoActionBuilder
    implements
        Builder<SetUpdateSuccessTodoAction, SetUpdateSuccessTodoActionBuilder> {
  _$SetUpdateSuccessTodoAction _$v;

  SetUpdateSuccessTodoActionBuilder();

  @override
  void replace(SetUpdateSuccessTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUpdateSuccessTodoAction;
  }

  @override
  void update(void Function(SetUpdateSuccessTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUpdateSuccessTodoAction build() {
    final _$result = _$v ?? new _$SetUpdateSuccessTodoAction._();
    replace(_$result);
    return _$result;
  }
}

class _$SetUpdateFailedTodoAction extends SetUpdateFailedTodoAction {
  factory _$SetUpdateFailedTodoAction(
          [void Function(SetUpdateFailedTodoActionBuilder) updates]) =>
      (new SetUpdateFailedTodoActionBuilder()..update(updates)).build();

  _$SetUpdateFailedTodoAction._() : super._();

  @override
  SetUpdateFailedTodoAction rebuild(
          void Function(SetUpdateFailedTodoActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetUpdateFailedTodoActionBuilder toBuilder() =>
      new SetUpdateFailedTodoActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUpdateFailedTodoAction;
  }

  @override
  int get hashCode {
    return 274784143;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SetUpdateFailedTodoAction').toString();
  }
}

class SetUpdateFailedTodoActionBuilder
    implements
        Builder<SetUpdateFailedTodoAction, SetUpdateFailedTodoActionBuilder> {
  _$SetUpdateFailedTodoAction _$v;

  SetUpdateFailedTodoActionBuilder();

  @override
  void replace(SetUpdateFailedTodoAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetUpdateFailedTodoAction;
  }

  @override
  void update(void Function(SetUpdateFailedTodoActionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetUpdateFailedTodoAction build() {
    final _$result = _$v ?? new _$SetUpdateFailedTodoAction._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
