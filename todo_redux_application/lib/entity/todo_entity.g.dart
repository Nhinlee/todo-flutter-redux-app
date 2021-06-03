// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoEntity extends TodoEntity {
  @override
  final int id;
  @override
  final String title;
  @override
  final bool isCompleted;
  @override
  final String desc;
  @override
  final bool isFavorite;

  factory _$TodoEntity([void Function(TodoEntityBuilder) updates]) =>
      (new TodoEntityBuilder()..update(updates)).build();

  _$TodoEntity._(
      {this.id, this.title, this.isCompleted, this.desc, this.isFavorite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TodoEntity', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'TodoEntity', 'title');
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
        isCompleted == other.isCompleted &&
        desc == other.desc &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), isCompleted.hashCode),
            desc.hashCode),
        isFavorite.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoEntity')
          ..add('id', id)
          ..add('title', title)
          ..add('isCompleted', isCompleted)
          ..add('desc', desc)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class TodoEntityBuilder implements Builder<TodoEntity, TodoEntityBuilder> {
  _$TodoEntity _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _isCompleted;
  bool get isCompleted => _$this._isCompleted;
  set isCompleted(bool isCompleted) => _$this._isCompleted = isCompleted;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  bool _isFavorite;
  bool get isFavorite => _$this._isFavorite;
  set isFavorite(bool isFavorite) => _$this._isFavorite = isFavorite;

  TodoEntityBuilder();

  TodoEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _isCompleted = $v.isCompleted;
      _desc = $v.desc;
      _isFavorite = $v.isFavorite;
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
            isCompleted: BuiltValueNullFieldError.checkNotNull(
                isCompleted, 'TodoEntity', 'isCompleted'),
            desc: desc,
            isFavorite: isFavorite);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
