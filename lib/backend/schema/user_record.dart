import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'Refferral_ID')
  String? get refferralID;

  @BuiltValueField(wireName: 'Sponsor_ID')
  String? get sponsorID;

  @BuiltValueField(wireName: 'Lvl_1')
  BuiltList<DocumentReference>? get lvl1;

  @BuiltValueField(wireName: 'User_Database')
  DocumentReference? get userDatabase;

  @BuiltValueField(wireName: 'User_Databse_Ref')
  String? get userDatabseRef;

  @BuiltValueField(wireName: 'ZKT_balance')
  int? get zKTBalance;

  @BuiltValueField(wireName: 'ZKT_Wallet_Address')
  String? get zKTWalletAddress;

  @BuiltValueField(wireName: 'Direct_Income')
  int? get directIncome;

  @BuiltValueField(wireName: 'Total_Unilevel_Income')
  int? get totalUnilevelIncome;

  @BuiltValueField(wireName: 'all_income')
  int? get allIncome;

  @BuiltValueField(wireName: 'Upline')
  String? get upline;

  bool? get claimedtoken;

  String? get city;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..refferralID = ''
    ..sponsorID = ''
    ..lvl1 = ListBuilder()
    ..userDatabseRef = ''
    ..zKTBalance = 0
    ..zKTWalletAddress = ''
    ..directIncome = 0
    ..totalUnilevelIncome = 0
    ..allIncome = 0
    ..upline = ''
    ..claimedtoken = false
    ..city = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? refferralID,
  String? sponsorID,
  DocumentReference? userDatabase,
  String? userDatabseRef,
  int? zKTBalance,
  String? zKTWalletAddress,
  int? directIncome,
  int? totalUnilevelIncome,
  int? allIncome,
  String? upline,
  bool? claimedtoken,
  String? city,
}) {
  final firestoreData = serializers.toFirestore(
    UserRecord.serializer,
    UserRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..refferralID = refferralID
        ..sponsorID = sponsorID
        ..lvl1 = null
        ..userDatabase = userDatabase
        ..userDatabseRef = userDatabseRef
        ..zKTBalance = zKTBalance
        ..zKTWalletAddress = zKTWalletAddress
        ..directIncome = directIncome
        ..totalUnilevelIncome = totalUnilevelIncome
        ..allIncome = allIncome
        ..upline = upline
        ..claimedtoken = claimedtoken
        ..city = city,
    ),
  );

  return firestoreData;
}
