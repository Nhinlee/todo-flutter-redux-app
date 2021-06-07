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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
