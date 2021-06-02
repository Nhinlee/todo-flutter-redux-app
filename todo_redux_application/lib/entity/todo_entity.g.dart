// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoEntity extends TodoEntity {
  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime createTime;
  @override
  final bool isCompleted;
  @override
  final String desc;

  factory _$TodoEntity([void Function(TodoEntityBuilder) updates]) =>
      (new TodoEntityBuilder()..update(updates)).build();

  _$TodoEntity._(
      {this.id, this.title, this.createTime, this.isCompleted, this.desc})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TodoEntity', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'TodoEntity', 'title');
    BuiltValueNullFieldError.checkNotNull(
        createTime, 'TodoEntity', 'createTime');
    BuiltValueNullFieldError.checkNotNull(
        isCompleted, 'TodoEntity', 'isCompleted');
  }

  @override
  TodoEntity rebuild(void Function(TodoEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoEntityBuilder toBuilder() => new TodoEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoEntity &&
        id == other.id &&
        title == other.title &&
        createTime == other.createTime &&
        isCompleted == other.isCompleted &&
        desc == other.desc;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), createTime.hashCode),
            isCompleted.hashCode),
        desc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoEntity')
          ..add('id', id)
          ..add('title', title)
          ..add('createTime', createTime)
          ..add('isCompleted', isCompleted)
          ..add('desc', desc))
        .toString();
  }
}

class TodoEntityBuilder implements Builder<TodoEntity, TodoEntityBuilder> {
  _$TodoEntity _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  DateTime _createTime;
  DateTime get createTime => _$this._createTime;
  set createTime(DateTime createTime) => _$this._createTime = createTime;

  bool _isCompleted;
  bool get isCompleted => _$this._isCompleted;
  set isCompleted(bool isCompleted) => _$this._isCompleted = isCompleted;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  TodoEntityBuilder();

  TodoEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _createTime = $v.createTime;
      _isCompleted = $v.isCompleted;
      _desc = $v.desc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoEntity;
  }

  @override
  void update(void Function(TodoEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoEntity build() {
    final _$result = _$v ??
        new _$TodoEntity._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'TodoEntity', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'TodoEntity', 'title'),
            createTime: BuiltValueNullFieldError.checkNotNull(
                createTime, 'TodoEntity', 'createTime'),
            isCompleted: BuiltValueNullFieldError.checkNotNull(
                isCompleted, 'TodoEntity', 'isCompleted'),
            desc: desc);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
