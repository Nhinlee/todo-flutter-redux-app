// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoState extends TodoState {
  @override
  final BuiltList<TodoEntity> todoList;
  @override
  final bool isLoading;

  factory _$TodoState([void Function(TodoStateBuilder) updates]) =>
      (new TodoStateBuilder()..update(updates)).build();

  _$TodoState._({this.todoList, this.isLoading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(todoList, 'TodoState', 'todoList');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'TodoState', 'isLoading');
  }

  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => new TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState &&
        todoList == other.todoList &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, todoList.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoState')
          ..add('todoList', todoList)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState _$v;

  ListBuilder<TodoEntity> _todoList;
  ListBuilder<TodoEntity> get todoList =>
      _$this._todoList ??= new ListBuilder<TodoEntity>();
  set todoList(ListBuilder<TodoEntity> todoList) => _$this._todoList = todoList;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  TodoStateBuilder();

  TodoStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todoList = $v.todoList.toBuilder();
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoState build() {
    _$TodoState _$result;
    try {
      _$result = _$v ??
          new _$TodoState._(
              todoList: todoList.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'TodoState', 'isLoading'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todoList';
        todoList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
