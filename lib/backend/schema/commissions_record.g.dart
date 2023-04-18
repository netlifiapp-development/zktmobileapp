// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commissions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommissionsRecord> _$commissionsRecordSerializer =
    new _$CommissionsRecordSerializer();

class _$CommissionsRecordSerializer
    implements StructuredSerializer<CommissionsRecord> {
  @override
  final Iterable<Type> types = const [CommissionsRecord, _$CommissionsRecord];
  @override
  final String wireName = 'CommissionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommissionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.saleAmount;
    if (value != null) {
      result
        ..add('sale_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.commissionAmount;
    if (value != null) {
      result
        ..add('commission_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.saleDate;
    if (value != null) {
      result
        ..add('sale_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.commissionLevel;
    if (value != null) {
      result
        ..add('commission_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CommissionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommissionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sale_amount':
          result.saleAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'commission_amount':
          result.commissionAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sale_date':
          result.saleDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'commission_level':
          result.commissionLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CommissionsRecord extends CommissionsRecord {
  @override
  final String? userId;
  @override
  final int? saleAmount;
  @override
  final int? commissionAmount;
  @override
  final DateTime? saleDate;
  @override
  final int? commissionLevel;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommissionsRecord(
          [void Function(CommissionsRecordBuilder)? updates]) =>
      (new CommissionsRecordBuilder()..update(updates))._build();

  _$CommissionsRecord._(
      {this.userId,
      this.saleAmount,
      this.commissionAmount,
      this.saleDate,
      this.commissionLevel,
      this.ffRef})
      : super._();

  @override
  CommissionsRecord rebuild(void Function(CommissionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommissionsRecordBuilder toBuilder() =>
      new CommissionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommissionsRecord &&
        userId == other.userId &&
        saleAmount == other.saleAmount &&
        commissionAmount == other.commissionAmount &&
        saleDate == other.saleDate &&
        commissionLevel == other.commissionLevel &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, saleAmount.hashCode);
    _$hash = $jc(_$hash, commissionAmount.hashCode);
    _$hash = $jc(_$hash, saleDate.hashCode);
    _$hash = $jc(_$hash, commissionLevel.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommissionsRecord')
          ..add('userId', userId)
          ..add('saleAmount', saleAmount)
          ..add('commissionAmount', commissionAmount)
          ..add('saleDate', saleDate)
          ..add('commissionLevel', commissionLevel)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommissionsRecordBuilder
    implements Builder<CommissionsRecord, CommissionsRecordBuilder> {
  _$CommissionsRecord? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _saleAmount;
  int? get saleAmount => _$this._saleAmount;
  set saleAmount(int? saleAmount) => _$this._saleAmount = saleAmount;

  int? _commissionAmount;
  int? get commissionAmount => _$this._commissionAmount;
  set commissionAmount(int? commissionAmount) =>
      _$this._commissionAmount = commissionAmount;

  DateTime? _saleDate;
  DateTime? get saleDate => _$this._saleDate;
  set saleDate(DateTime? saleDate) => _$this._saleDate = saleDate;

  int? _commissionLevel;
  int? get commissionLevel => _$this._commissionLevel;
  set commissionLevel(int? commissionLevel) =>
      _$this._commissionLevel = commissionLevel;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommissionsRecordBuilder() {
    CommissionsRecord._initializeBuilder(this);
  }

  CommissionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _saleAmount = $v.saleAmount;
      _commissionAmount = $v.commissionAmount;
      _saleDate = $v.saleDate;
      _commissionLevel = $v.commissionLevel;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommissionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommissionsRecord;
  }

  @override
  void update(void Function(CommissionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommissionsRecord build() => _build();

  _$CommissionsRecord _build() {
    final _$result = _$v ??
        new _$CommissionsRecord._(
            userId: userId,
            saleAmount: saleAmount,
            commissionAmount: commissionAmount,
            saleDate: saleDate,
            commissionLevel: commissionLevel,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
