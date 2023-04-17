// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_ref_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DirectRefRecord> _$directRefRecordSerializer =
    new _$DirectRefRecordSerializer();

class _$DirectRefRecordSerializer
    implements StructuredSerializer<DirectRefRecord> {
  @override
  final Iterable<Type> types = const [DirectRefRecord, _$DirectRefRecord];
  @override
  final String wireName = 'DirectRefRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DirectRefRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refferralID;
    if (value != null) {
      result
        ..add('refferralID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.affiliates;
    if (value != null) {
      result
        ..add('Affiliates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('Total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dRIncome;
    if (value != null) {
      result
        ..add('DR_income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mySponsor;
    if (value != null) {
      result
        ..add('MySponsor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  DirectRefRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DirectRefRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refferralID':
          result.refferralID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Affiliates':
          result.affiliates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DR_income':
          result.dRIncome = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'MySponsor':
          result.mySponsor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$DirectRefRecord extends DirectRefRecord {
  @override
  final String? name;
  @override
  final String? refferralID;
  @override
  final BuiltList<DocumentReference<Object?>>? affiliates;
  @override
  final int? total;
  @override
  final int? dRIncome;
  @override
  final DocumentReference<Object?>? mySponsor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DirectRefRecord([void Function(DirectRefRecordBuilder)? updates]) =>
      (new DirectRefRecordBuilder()..update(updates))._build();

  _$DirectRefRecord._(
      {this.name,
      this.refferralID,
      this.affiliates,
      this.total,
      this.dRIncome,
      this.mySponsor,
      this.ffRef})
      : super._();

  @override
  DirectRefRecord rebuild(void Function(DirectRefRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectRefRecordBuilder toBuilder() =>
      new DirectRefRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectRefRecord &&
        name == other.name &&
        refferralID == other.refferralID &&
        affiliates == other.affiliates &&
        total == other.total &&
        dRIncome == other.dRIncome &&
        mySponsor == other.mySponsor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, refferralID.hashCode);
    _$hash = $jc(_$hash, affiliates.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, dRIncome.hashCode);
    _$hash = $jc(_$hash, mySponsor.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DirectRefRecord')
          ..add('name', name)
          ..add('refferralID', refferralID)
          ..add('affiliates', affiliates)
          ..add('total', total)
          ..add('dRIncome', dRIncome)
          ..add('mySponsor', mySponsor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DirectRefRecordBuilder
    implements Builder<DirectRefRecord, DirectRefRecordBuilder> {
  _$DirectRefRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _refferralID;
  String? get refferralID => _$this._refferralID;
  set refferralID(String? refferralID) => _$this._refferralID = refferralID;

  ListBuilder<DocumentReference<Object?>>? _affiliates;
  ListBuilder<DocumentReference<Object?>> get affiliates =>
      _$this._affiliates ??= new ListBuilder<DocumentReference<Object?>>();
  set affiliates(ListBuilder<DocumentReference<Object?>>? affiliates) =>
      _$this._affiliates = affiliates;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _dRIncome;
  int? get dRIncome => _$this._dRIncome;
  set dRIncome(int? dRIncome) => _$this._dRIncome = dRIncome;

  DocumentReference<Object?>? _mySponsor;
  DocumentReference<Object?>? get mySponsor => _$this._mySponsor;
  set mySponsor(DocumentReference<Object?>? mySponsor) =>
      _$this._mySponsor = mySponsor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DirectRefRecordBuilder() {
    DirectRefRecord._initializeBuilder(this);
  }

  DirectRefRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _refferralID = $v.refferralID;
      _affiliates = $v.affiliates?.toBuilder();
      _total = $v.total;
      _dRIncome = $v.dRIncome;
      _mySponsor = $v.mySponsor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectRefRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DirectRefRecord;
  }

  @override
  void update(void Function(DirectRefRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectRefRecord build() => _build();

  _$DirectRefRecord _build() {
    _$DirectRefRecord _$result;
    try {
      _$result = _$v ??
          new _$DirectRefRecord._(
              name: name,
              refferralID: refferralID,
              affiliates: _affiliates?.build(),
              total: total,
              dRIncome: dRIncome,
              mySponsor: mySponsor,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affiliates';
        _affiliates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DirectRefRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
