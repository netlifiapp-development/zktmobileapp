import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'multi_level_record.g.dart';

abstract class MultiLevelRecord
    implements Built<MultiLevelRecord, MultiLevelRecordBuilder> {
  static Serializer<MultiLevelRecord> get serializer =>
      _$multiLevelRecordSerializer;

  @BuiltValueField(wireName: 'Level')
  int? get level;

  @BuiltValueField(wireName: 'Count')
  int? get count;

  int? get income;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MultiLevelRecordBuilder builder) => builder
    ..level = 0
    ..count = 0
    ..income = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MultiLevel');

  static Stream<MultiLevelRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MultiLevelRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MultiLevelRecord._();
  factory MultiLevelRecord([void Function(MultiLevelRecordBuilder) updates]) =
      _$MultiLevelRecord;

  static MultiLevelRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMultiLevelRecordData({
  int? level,
  int? count,
  int? income,
}) {
  final firestoreData = serializers.toFirestore(
    MultiLevelRecord.serializer,
    MultiLevelRecord(
      (m) => m
        ..level = level
        ..count = count
        ..income = income,
    ),
  );

  return firestoreData;
}
