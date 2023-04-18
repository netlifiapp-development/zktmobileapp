import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sponsoring_user_record.g.dart';

abstract class SponsoringUserRecord
    implements Built<SponsoringUserRecord, SponsoringUserRecordBuilder> {
  static Serializer<SponsoringUserRecord> get serializer =>
      _$sponsoringUserRecordSerializer;

  @BuiltValueField(wireName: 'SponsorID')
  DocumentReference? get sponsorID;

  @BuiltValueField(wireName: 'AllDownlines')
  BuiltList<DocumentReference>? get allDownlines;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SponsoringUserRecordBuilder builder) =>
      builder..allDownlines = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SponsoringUser');

  static Stream<SponsoringUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SponsoringUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SponsoringUserRecord._();
  factory SponsoringUserRecord(
          [void Function(SponsoringUserRecordBuilder) updates]) =
      _$SponsoringUserRecord;

  static SponsoringUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSponsoringUserRecordData({
  DocumentReference? sponsorID,
}) {
  final firestoreData = serializers.toFirestore(
    SponsoringUserRecord.serializer,
    SponsoringUserRecord(
      (s) => s
        ..sponsorID = sponsorID
        ..allDownlines = null,
    ),
  );

  return firestoreData;
}
