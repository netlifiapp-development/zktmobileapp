import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'direct_ref_record.g.dart';

abstract class DirectRefRecord
    implements Built<DirectRefRecord, DirectRefRecordBuilder> {
  static Serializer<DirectRefRecord> get serializer =>
      _$directRefRecordSerializer;

  String? get name;

  String? get refferralID;

  @BuiltValueField(wireName: 'Affiliates')
  BuiltList<DocumentReference>? get affiliates;

  @BuiltValueField(wireName: 'Total')
  int? get total;

  @BuiltValueField(wireName: 'DR_income')
  int? get dRIncome;

  @BuiltValueField(wireName: 'MySponsor')
  DocumentReference? get mySponsor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DirectRefRecordBuilder builder) => builder
    ..name = ''
    ..refferralID = ''
    ..affiliates = ListBuilder()
    ..total = 0
    ..dRIncome = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Direct_Ref')
          : FirebaseFirestore.instance.collectionGroup('Direct_Ref');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Direct_Ref').doc();

  static Stream<DirectRefRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DirectRefRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DirectRefRecord._();
  factory DirectRefRecord([void Function(DirectRefRecordBuilder) updates]) =
      _$DirectRefRecord;

  static DirectRefRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDirectRefRecordData({
  String? name,
  String? refferralID,
  int? total,
  int? dRIncome,
  DocumentReference? mySponsor,
}) {
  final firestoreData = serializers.toFirestore(
    DirectRefRecord.serializer,
    DirectRefRecord(
      (d) => d
        ..name = name
        ..refferralID = refferralID
        ..affiliates = null
        ..total = total
        ..dRIncome = dRIncome
        ..mySponsor = mySponsor,
    ),
  );

  return firestoreData;
}
