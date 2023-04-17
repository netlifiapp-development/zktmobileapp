// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_sponsors_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllSponsorsStruct> _$allSponsorsStructSerializer =
    new _$AllSponsorsStructSerializer();

class _$AllSponsorsStructSerializer
    implements StructuredSerializer<AllSponsorsStruct> {
  @override
  final Iterable<Type> types = const [AllSponsorsStruct, _$AllSponsorsStruct];
  @override
  final String wireName = 'AllSponsorsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AllSponsorsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.refferralID;
    if (value != null) {
      result
        ..add('RefferralID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    return result;
  }

  @override
  AllSponsorsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllSponsorsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'RefferralID':
          result.refferralID.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AllSponsorsStruct extends AllSponsorsStruct {
  @override
  final BuiltList<DocumentReference<Object?>>? refferralID;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AllSponsorsStruct(
          [void Function(AllSponsorsStructBuilder)? updates]) =>
      (new AllSponsorsStructBuilder()..update(updates))._build();

  _$AllSponsorsStruct._({this.refferralID, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AllSponsorsStruct', 'firestoreUtilData');
  }

  @override
  AllSponsorsStruct rebuild(void Function(AllSponsorsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllSponsorsStructBuilder toBuilder() =>
      new AllSponsorsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllSponsorsStruct &&
        refferralID == other.refferralID &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refferralID.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllSponsorsStruct')
          ..add('refferralID', refferralID)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AllSponsorsStructBuilder
    implements Builder<AllSponsorsStruct, AllSponsorsStructBuilder> {
  _$AllSponsorsStruct? _$v;

  ListBuilder<DocumentReference<Object?>>? _refferralID;
  ListBuilder<DocumentReference<Object?>> get refferralID =>
      _$this._refferralID ??= new ListBuilder<DocumentReference<Object?>>();
  set refferralID(ListBuilder<DocumentReference<Object?>>? refferralID) =>
      _$this._refferralID = refferralID;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AllSponsorsStructBuilder() {
    AllSponsorsStruct._initializeBuilder(this);
  }

  AllSponsorsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refferralID = $v.refferralID?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllSponsorsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllSponsorsStruct;
  }

  @override
  void update(void Function(AllSponsorsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllSponsorsStruct build() => _build();

  _$AllSponsorsStruct _build() {
    _$AllSponsorsStruct _$result;
    try {
      _$result = _$v ??
          new _$AllSponsorsStruct._(
              refferralID: _refferralID?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'AllSponsorsStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refferralID';
        _refferralID?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllSponsorsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
