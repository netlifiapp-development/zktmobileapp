import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'database_record.g.dart';

abstract class DatabaseRecord
    implements Built<DatabaseRecord, DatabaseRecordBuilder> {
  static Serializer<DatabaseRecord> get serializer =>
      _$databaseRecordSerializer;

  @BuiltValueField(wireName: 'FullName')
  String? get fullName;

  @BuiltValueField(wireName: 'Email')
  String? get email;

  @BuiltValueField(wireName: 'Username')
  String? get username;

  @BuiltValueField(wireName: 'Referral_Code')
  String? get referralCode;

  @BuiltValueField(wireName: 'Referral_Link')
  String? get referralLink;

  @BuiltValueField(wireName: 'Referrer_Username')
  String? get referrerUsername;

  @BuiltValueField(wireName: 'Level')
  int? get level;

  @BuiltValueField(wireName: 'Total_Affiliates')
  int? get totalAffiliates;

  @BuiltValueField(wireName: 'Level_Incone_ZKT')
  int? get levelInconeZKT;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatabaseRecordBuilder builder) => builder
    ..fullName = ''
    ..email = ''
    ..username = ''
    ..referralCode = ''
    ..referralLink = ''
    ..referrerUsername = ''
    ..level = 0
    ..totalAffiliates = 0
    ..levelInconeZKT = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Database');

  static Stream<DatabaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatabaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatabaseRecord._();
  factory DatabaseRecord([void Function(DatabaseRecordBuilder) updates]) =
      _$DatabaseRecord;

  static DatabaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatabaseRecordData({
  String? fullName,
  String? email,
  String? username,
  String? referralCode,
  String? referralLink,
  String? referrerUsername,
  int? level,
  int? totalAffiliates,
  int? levelInconeZKT,
}) {
  final firestoreData = serializers.toFirestore(
    DatabaseRecord.serializer,
    DatabaseRecord(
      (d) => d
        ..fullName = fullName
        ..email = email
        ..username = username
        ..referralCode = referralCode
        ..referralLink = referralLink
        ..referrerUsername = referrerUsername
        ..level = level
        ..totalAffiliates = totalAffiliates
        ..levelInconeZKT = levelInconeZKT,
    ),
  );

  return firestoreData;
}
