// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_level_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MultiLevelRecord> _$multiLevelRecordSerializer =
    new _$MultiLevelRecordSerializer();

class _$MultiLevelRecordSerializer
    implements StructuredSerializer<MultiLevelRecord> {
  @override
  final Iterable<Type> types = const [MultiLevelRecord, _$MultiLevelRecord];
  @override
  final String wireName = 'MultiLevelRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MultiLevelRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.level;
    if (value != null) {
      result
        ..add('Level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('Count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.income;
    if (value != null) {
      result
        ..add('income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.iconurl;
    if (value != null) {
      result
        ..add('iconurl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MultiLevelRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultiLevelRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'income':
          result.income = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'iconurl':
          result.iconurl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MultiLevelRecord extends MultiLevelRecord {
  @override
  final int? level;
  @override
  final int? count;
  @override
  final int? income;
  @override
  final String? iconurl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MultiLevelRecord(
          [void Function(MultiLevelRecordBuilder)? updates]) =>
      (new MultiLevelRecordBuilder()..update(updates))._build();

  _$MultiLevelRecord._(
      {this.level, this.count, this.income, this.iconurl, this.ffRef})
      : super._();

  @override
  MultiLevelRecord rebuild(void Function(MultiLevelRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiLevelRecordBuilder toBuilder() =>
      new MultiLevelRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiLevelRecord &&
        level == other.level &&
        count == other.count &&
        income == other.income &&
        iconurl == other.iconurl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, iconurl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiLevelRecord')
          ..add('level', level)
          ..add('count', count)
          ..add('income', income)
          ..add('iconurl', iconurl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MultiLevelRecordBuilder
    implements Builder<MultiLevelRecord, MultiLevelRecordBuilder> {
  _$MultiLevelRecord? _$v;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _income;
  int? get income => _$this._income;
  set income(int? income) => _$this._income = income;

  String? _iconurl;
  String? get iconurl => _$this._iconurl;
  set iconurl(String? iconurl) => _$this._iconurl = iconurl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MultiLevelRecordBuilder() {
    MultiLevelRecord._initializeBuilder(this);
  }

  MultiLevelRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _count = $v.count;
      _income = $v.income;
      _iconurl = $v.iconurl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiLevelRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiLevelRecord;
  }

  @override
  void update(void Function(MultiLevelRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiLevelRecord build() => _build();

  _$MultiLevelRecord _build() {
    final _$result = _$v ??
        new _$MultiLevelRecord._(
            level: level,
            count: count,
            income: income,
            iconurl: iconurl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
