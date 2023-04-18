import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'commissions_record.g.dart';

abstract class CommissionsRecord
    implements Built<CommissionsRecord, CommissionsRecordBuilder> {
  static Serializer<CommissionsRecord> get serializer =>
      _$commissionsRecordSerializer;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'sale_amount')
  int? get saleAmount;

  @BuiltValueField(wireName: 'commission_amount')
  int? get commissionAmount;

  @BuiltValueField(wireName: 'sale_date')
  DateTime? get saleDate;

  @BuiltValueField(wireName: 'commission_level')
  int? get commissionLevel;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommissionsRecordBuilder builder) => builder
    ..userId = ''
    ..saleAmount = 0
    ..commissionAmount = 0
    ..commissionLevel = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Commissions');

  static Stream<CommissionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommissionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommissionsRecord._();
  factory CommissionsRecord([void Function(CommissionsRecordBuilder) updates]) =
      _$CommissionsRecord;

  static CommissionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommissionsRecordData({
  String? userId,
  int? saleAmount,
  int? commissionAmount,
  DateTime? saleDate,
  int? commissionLevel,
}) {
  final firestoreData = serializers.toFirestore(
    CommissionsRecord.serializer,
    CommissionsRecord(
      (c) => c
        ..userId = userId
        ..saleAmount = saleAmount
        ..commissionAmount = commissionAmount
        ..saleDate = saleDate
        ..commissionLevel = commissionLevel,
    ),
  );

  return firestoreData;
}
