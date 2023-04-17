// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Level1Record> _$level1RecordSerializer =
    new _$Level1RecordSerializer();

class _$Level1RecordSerializer implements StructuredSerializer<Level1Record> {
  @override
  final Iterable<Type> types = const [Level1Record, _$Level1Record];
  @override
  final String wireName = 'Level1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Level1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.totalUsers;
    if (value != null) {
      result
        ..add('TotalUsers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.income;
    if (value != null) {
      result
        ..add('Income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usersInlevel;
    if (value != null) {
      result
        ..add('Users_inlevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  Level1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Level1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TotalUsers':
          result.totalUsers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Income':
          result.income = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Users_inlevel':
          result.usersInlevel.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$Level1Record extends Level1Record {
  @override
  final int? totalUsers;
  @override
  final int? income;
  @override
  final BuiltList<DocumentReference<Object?>>? usersInlevel;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Level1Record([void Function(Level1RecordBuilder)? updates]) =>
      (new Level1RecordBuilder()..update(updates))._build();

  _$Level1Record._(
      {this.totalUsers, this.income, this.usersInlevel, this.ffRef})
      : super._();

  @override
  Level1Record rebuild(void Function(Level1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Level1RecordBuilder toBuilder() => new Level1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Level1Record &&
        totalUsers == other.totalUsers &&
        income == other.income &&
        usersInlevel == other.usersInlevel &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalUsers.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, usersInlevel.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Level1Record')
          ..add('totalUsers', totalUsers)
          ..add('income', income)
          ..add('usersInlevel', usersInlevel)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Level1RecordBuilder
    implements Builder<Level1Record, Level1RecordBuilder> {
  _$Level1Record? _$v;

  int? _totalUsers;
  int? get totalUsers => _$this._totalUsers;
  set totalUsers(int? totalUsers) => _$this._totalUsers = totalUsers;

  int? _income;
  int? get income => _$this._income;
  set income(int? income) => _$this._income = income;

  ListBuilder<DocumentReference<Object?>>? _usersInlevel;
  ListBuilder<DocumentReference<Object?>> get usersInlevel =>
      _$this._usersInlevel ??= new ListBuilder<DocumentReference<Object?>>();
  set usersInlevel(ListBuilder<DocumentReference<Object?>>? usersInlevel) =>
      _$this._usersInlevel = usersInlevel;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Level1RecordBuilder() {
    Level1Record._initializeBuilder(this);
  }

  Level1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalUsers = $v.totalUsers;
      _income = $v.income;
      _usersInlevel = $v.usersInlevel?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Level1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Level1Record;
  }

  @override
  void update(void Function(Level1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Level1Record build() => _build();

  _$Level1Record _build() {
    _$Level1Record _$result;
    try {
      _$result = _$v ??
          new _$Level1Record._(
              totalUsers: totalUsers,
              income: income,
              usersInlevel: _usersInlevel?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'usersInlevel';
        _usersInlevel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Level1Record', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
