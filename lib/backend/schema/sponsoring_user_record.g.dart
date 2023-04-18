// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsoring_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SponsoringUserRecord> _$sponsoringUserRecordSerializer =
    new _$SponsoringUserRecordSerializer();

class _$SponsoringUserRecordSerializer
    implements StructuredSerializer<SponsoringUserRecord> {
  @override
  final Iterable<Type> types = const [
    SponsoringUserRecord,
    _$SponsoringUserRecord
  ];
  @override
  final String wireName = 'SponsoringUserRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SponsoringUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sponsorID;
    if (value != null) {
      result
        ..add('SponsorID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.allDownlines;
    if (value != null) {
      result
        ..add('AllDownlines')
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
  SponsoringUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SponsoringUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'SponsorID':
          result.sponsorID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'AllDownlines':
          result.allDownlines.replace(serializers.deserialize(value,
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

class _$SponsoringUserRecord extends SponsoringUserRecord {
  @override
  final DocumentReference<Object?>? sponsorID;
  @override
  final BuiltList<DocumentReference<Object?>>? allDownlines;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SponsoringUserRecord(
          [void Function(SponsoringUserRecordBuilder)? updates]) =>
      (new SponsoringUserRecordBuilder()..update(updates))._build();

  _$SponsoringUserRecord._({this.sponsorID, this.allDownlines, this.ffRef})
      : super._();

  @override
  SponsoringUserRecord rebuild(
          void Function(SponsoringUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SponsoringUserRecordBuilder toBuilder() =>
      new SponsoringUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SponsoringUserRecord &&
        sponsorID == other.sponsorID &&
        allDownlines == other.allDownlines &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sponsorID.hashCode);
    _$hash = $jc(_$hash, allDownlines.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SponsoringUserRecord')
          ..add('sponsorID', sponsorID)
          ..add('allDownlines', allDownlines)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SponsoringUserRecordBuilder
    implements Builder<SponsoringUserRecord, SponsoringUserRecordBuilder> {
  _$SponsoringUserRecord? _$v;

  DocumentReference<Object?>? _sponsorID;
  DocumentReference<Object?>? get sponsorID => _$this._sponsorID;
  set sponsorID(DocumentReference<Object?>? sponsorID) =>
      _$this._sponsorID = sponsorID;

  ListBuilder<DocumentReference<Object?>>? _allDownlines;
  ListBuilder<DocumentReference<Object?>> get allDownlines =>
      _$this._allDownlines ??= new ListBuilder<DocumentReference<Object?>>();
  set allDownlines(ListBuilder<DocumentReference<Object?>>? allDownlines) =>
      _$this._allDownlines = allDownlines;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SponsoringUserRecordBuilder() {
    SponsoringUserRecord._initializeBuilder(this);
  }

  SponsoringUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sponsorID = $v.sponsorID;
      _allDownlines = $v.allDownlines?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SponsoringUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SponsoringUserRecord;
  }

  @override
  void update(void Function(SponsoringUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SponsoringUserRecord build() => _build();

  _$SponsoringUserRecord _build() {
    _$SponsoringUserRecord _$result;
    try {
      _$result = _$v ??
          new _$SponsoringUserRecord._(
              sponsorID: sponsorID,
              allDownlines: _allDownlines?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allDownlines';
        _allDownlines?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SponsoringUserRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
