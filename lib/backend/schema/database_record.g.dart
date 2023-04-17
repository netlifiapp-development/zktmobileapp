// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatabaseRecord> _$databaseRecordSerializer =
    new _$DatabaseRecordSerializer();

class _$DatabaseRecordSerializer
    implements StructuredSerializer<DatabaseRecord> {
  @override
  final Iterable<Type> types = const [DatabaseRecord, _$DatabaseRecord];
  @override
  final String wireName = 'DatabaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DatabaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('FullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('Username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('Referral_Code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referralLink;
    if (value != null) {
      result
        ..add('Referral_Link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrerUsername;
    if (value != null) {
      result
        ..add('Referrer_Username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('Level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalAffiliates;
    if (value != null) {
      result
        ..add('Total_Affiliates')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.levelInconeZKT;
    if (value != null) {
      result
        ..add('Level_Incone_ZKT')
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
  DatabaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatabaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'FullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Referral_Code':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Referral_Link':
          result.referralLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Referrer_Username':
          result.referrerUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Total_Affiliates':
          result.totalAffiliates = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Level_Incone_ZKT':
          result.levelInconeZKT = serializers.deserialize(value,
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

class _$DatabaseRecord extends DatabaseRecord {
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? referralCode;
  @override
  final String? referralLink;
  @override
  final String? referrerUsername;
  @override
  final int? level;
  @override
  final int? totalAffiliates;
  @override
  final int? levelInconeZKT;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatabaseRecord([void Function(DatabaseRecordBuilder)? updates]) =>
      (new DatabaseRecordBuilder()..update(updates))._build();

  _$DatabaseRecord._(
      {this.fullName,
      this.email,
      this.username,
      this.referralCode,
      this.referralLink,
      this.referrerUsername,
      this.level,
      this.totalAffiliates,
      this.levelInconeZKT,
      this.ffRef})
      : super._();

  @override
  DatabaseRecord rebuild(void Function(DatabaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatabaseRecordBuilder toBuilder() =>
      new DatabaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatabaseRecord &&
        fullName == other.fullName &&
        email == other.email &&
        username == other.username &&
        referralCode == other.referralCode &&
        referralLink == other.referralLink &&
        referrerUsername == other.referrerUsername &&
        level == other.level &&
        totalAffiliates == other.totalAffiliates &&
        levelInconeZKT == other.levelInconeZKT &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jc(_$hash, referralLink.hashCode);
    _$hash = $jc(_$hash, referrerUsername.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, totalAffiliates.hashCode);
    _$hash = $jc(_$hash, levelInconeZKT.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatabaseRecord')
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('username', username)
          ..add('referralCode', referralCode)
          ..add('referralLink', referralLink)
          ..add('referrerUsername', referrerUsername)
          ..add('level', level)
          ..add('totalAffiliates', totalAffiliates)
          ..add('levelInconeZKT', levelInconeZKT)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatabaseRecordBuilder
    implements Builder<DatabaseRecord, DatabaseRecordBuilder> {
  _$DatabaseRecord? _$v;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _referralCode;
  String? get referralCode => _$this._referralCode;
  set referralCode(String? referralCode) => _$this._referralCode = referralCode;

  String? _referralLink;
  String? get referralLink => _$this._referralLink;
  set referralLink(String? referralLink) => _$this._referralLink = referralLink;

  String? _referrerUsername;
  String? get referrerUsername => _$this._referrerUsername;
  set referrerUsername(String? referrerUsername) =>
      _$this._referrerUsername = referrerUsername;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  int? _totalAffiliates;
  int? get totalAffiliates => _$this._totalAffiliates;
  set totalAffiliates(int? totalAffiliates) =>
      _$this._totalAffiliates = totalAffiliates;

  int? _levelInconeZKT;
  int? get levelInconeZKT => _$this._levelInconeZKT;
  set levelInconeZKT(int? levelInconeZKT) =>
      _$this._levelInconeZKT = levelInconeZKT;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatabaseRecordBuilder() {
    DatabaseRecord._initializeBuilder(this);
  }

  DatabaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _email = $v.email;
      _username = $v.username;
      _referralCode = $v.referralCode;
      _referralLink = $v.referralLink;
      _referrerUsername = $v.referrerUsername;
      _level = $v.level;
      _totalAffiliates = $v.totalAffiliates;
      _levelInconeZKT = $v.levelInconeZKT;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatabaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatabaseRecord;
  }

  @override
  void update(void Function(DatabaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatabaseRecord build() => _build();

  _$DatabaseRecord _build() {
    final _$result = _$v ??
        new _$DatabaseRecord._(
            fullName: fullName,
            email: email,
            username: username,
            referralCode: referralCode,
            referralLink: referralLink,
            referrerUsername: referrerUsername,
            level: level,
            totalAffiliates: totalAffiliates,
            levelInconeZKT: levelInconeZKT,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
