// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refferralID;
    if (value != null) {
      result
        ..add('Refferral_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sponsorID;
    if (value != null) {
      result
        ..add('Sponsor_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lvl1;
    if (value != null) {
      result
        ..add('Lvl_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.userDatabase;
    if (value != null) {
      result
        ..add('User_Database')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userDatabseRef;
    if (value != null) {
      result
        ..add('User_Databse_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zKTBalance;
    if (value != null) {
      result
        ..add('ZKT_balance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.zKTWalletAddress;
    if (value != null) {
      result
        ..add('ZKT_Wallet_Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.directIncome;
    if (value != null) {
      result
        ..add('Direct_Income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalUnilevelIncome;
    if (value != null) {
      result
        ..add('Total_Unilevel_Income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.allIncome;
    if (value != null) {
      result
        ..add('all_income')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.upline;
    if (value != null) {
      result
        ..add('Upline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claimedtoken;
    if (value != null) {
      result
        ..add('claimedtoken')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
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
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Refferral_ID':
          result.refferralID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sponsor_ID':
          result.sponsorID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Lvl_1':
          result.lvl1.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'User_Database':
          result.userDatabase = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'User_Databse_Ref':
          result.userDatabseRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ZKT_balance':
          result.zKTBalance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ZKT_Wallet_Address':
          result.zKTWalletAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direct_Income':
          result.directIncome = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Total_Unilevel_Income':
          result.totalUnilevelIncome = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'all_income':
          result.allIncome = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Upline':
          result.upline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'claimedtoken':
          result.claimedtoken = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
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

class _$UserRecord extends UserRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? refferralID;
  @override
  final String? sponsorID;
  @override
  final BuiltList<DocumentReference<Object?>>? lvl1;
  @override
  final DocumentReference<Object?>? userDatabase;
  @override
  final String? userDatabseRef;
  @override
  final int? zKTBalance;
  @override
  final String? zKTWalletAddress;
  @override
  final int? directIncome;
  @override
  final int? totalUnilevelIncome;
  @override
  final int? allIncome;
  @override
  final String? upline;
  @override
  final bool? claimedtoken;
  @override
  final String? city;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.refferralID,
      this.sponsorID,
      this.lvl1,
      this.userDatabase,
      this.userDatabseRef,
      this.zKTBalance,
      this.zKTWalletAddress,
      this.directIncome,
      this.totalUnilevelIncome,
      this.allIncome,
      this.upline,
      this.claimedtoken,
      this.city,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        refferralID == other.refferralID &&
        sponsorID == other.sponsorID &&
        lvl1 == other.lvl1 &&
        userDatabase == other.userDatabase &&
        userDatabseRef == other.userDatabseRef &&
        zKTBalance == other.zKTBalance &&
        zKTWalletAddress == other.zKTWalletAddress &&
        directIncome == other.directIncome &&
        totalUnilevelIncome == other.totalUnilevelIncome &&
        allIncome == other.allIncome &&
        upline == other.upline &&
        claimedtoken == other.claimedtoken &&
        city == other.city &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, refferralID.hashCode);
    _$hash = $jc(_$hash, sponsorID.hashCode);
    _$hash = $jc(_$hash, lvl1.hashCode);
    _$hash = $jc(_$hash, userDatabase.hashCode);
    _$hash = $jc(_$hash, userDatabseRef.hashCode);
    _$hash = $jc(_$hash, zKTBalance.hashCode);
    _$hash = $jc(_$hash, zKTWalletAddress.hashCode);
    _$hash = $jc(_$hash, directIncome.hashCode);
    _$hash = $jc(_$hash, totalUnilevelIncome.hashCode);
    _$hash = $jc(_$hash, allIncome.hashCode);
    _$hash = $jc(_$hash, upline.hashCode);
    _$hash = $jc(_$hash, claimedtoken.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('refferralID', refferralID)
          ..add('sponsorID', sponsorID)
          ..add('lvl1', lvl1)
          ..add('userDatabase', userDatabase)
          ..add('userDatabseRef', userDatabseRef)
          ..add('zKTBalance', zKTBalance)
          ..add('zKTWalletAddress', zKTWalletAddress)
          ..add('directIncome', directIncome)
          ..add('totalUnilevelIncome', totalUnilevelIncome)
          ..add('allIncome', allIncome)
          ..add('upline', upline)
          ..add('claimedtoken', claimedtoken)
          ..add('city', city)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _refferralID;
  String? get refferralID => _$this._refferralID;
  set refferralID(String? refferralID) => _$this._refferralID = refferralID;

  String? _sponsorID;
  String? get sponsorID => _$this._sponsorID;
  set sponsorID(String? sponsorID) => _$this._sponsorID = sponsorID;

  ListBuilder<DocumentReference<Object?>>? _lvl1;
  ListBuilder<DocumentReference<Object?>> get lvl1 =>
      _$this._lvl1 ??= new ListBuilder<DocumentReference<Object?>>();
  set lvl1(ListBuilder<DocumentReference<Object?>>? lvl1) =>
      _$this._lvl1 = lvl1;

  DocumentReference<Object?>? _userDatabase;
  DocumentReference<Object?>? get userDatabase => _$this._userDatabase;
  set userDatabase(DocumentReference<Object?>? userDatabase) =>
      _$this._userDatabase = userDatabase;

  String? _userDatabseRef;
  String? get userDatabseRef => _$this._userDatabseRef;
  set userDatabseRef(String? userDatabseRef) =>
      _$this._userDatabseRef = userDatabseRef;

  int? _zKTBalance;
  int? get zKTBalance => _$this._zKTBalance;
  set zKTBalance(int? zKTBalance) => _$this._zKTBalance = zKTBalance;

  String? _zKTWalletAddress;
  String? get zKTWalletAddress => _$this._zKTWalletAddress;
  set zKTWalletAddress(String? zKTWalletAddress) =>
      _$this._zKTWalletAddress = zKTWalletAddress;

  int? _directIncome;
  int? get directIncome => _$this._directIncome;
  set directIncome(int? directIncome) => _$this._directIncome = directIncome;

  int? _totalUnilevelIncome;
  int? get totalUnilevelIncome => _$this._totalUnilevelIncome;
  set totalUnilevelIncome(int? totalUnilevelIncome) =>
      _$this._totalUnilevelIncome = totalUnilevelIncome;

  int? _allIncome;
  int? get allIncome => _$this._allIncome;
  set allIncome(int? allIncome) => _$this._allIncome = allIncome;

  String? _upline;
  String? get upline => _$this._upline;
  set upline(String? upline) => _$this._upline = upline;

  bool? _claimedtoken;
  bool? get claimedtoken => _$this._claimedtoken;
  set claimedtoken(bool? claimedtoken) => _$this._claimedtoken = claimedtoken;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _refferralID = $v.refferralID;
      _sponsorID = $v.sponsorID;
      _lvl1 = $v.lvl1?.toBuilder();
      _userDatabase = $v.userDatabase;
      _userDatabseRef = $v.userDatabseRef;
      _zKTBalance = $v.zKTBalance;
      _zKTWalletAddress = $v.zKTWalletAddress;
      _directIncome = $v.directIncome;
      _totalUnilevelIncome = $v.totalUnilevelIncome;
      _allIncome = $v.allIncome;
      _upline = $v.upline;
      _claimedtoken = $v.claimedtoken;
      _city = $v.city;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    _$UserRecord _$result;
    try {
      _$result = _$v ??
          new _$UserRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              refferralID: refferralID,
              sponsorID: sponsorID,
              lvl1: _lvl1?.build(),
              userDatabase: userDatabase,
              userDatabseRef: userDatabseRef,
              zKTBalance: zKTBalance,
              zKTWalletAddress: zKTWalletAddress,
              directIncome: directIncome,
              totalUnilevelIncome: totalUnilevelIncome,
              allIncome: allIncome,
              upline: upline,
              claimedtoken: claimedtoken,
              city: city,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lvl1';
        _lvl1?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
