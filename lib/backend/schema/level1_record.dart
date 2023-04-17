import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'level1_record.g.dart';

abstract class Level1Record
    implements Built<Level1Record, Level1RecordBuilder> {
  static Serializer<Level1Record> get serializer => _$level1RecordSerializer;

  @BuiltValueField(wireName: 'TotalUsers')
  int? get totalUsers;

  @BuiltValueField(wireName: 'Income')
  int? get income;

  @BuiltValueField(wireName: 'Users_inlevel')
  BuiltList<DocumentReference>? get usersInlevel;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(Level1RecordBuilder builder) => builder
    ..totalUsers = 0
    ..income = 0
    ..usersInlevel = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Level1')
          : FirebaseFirestore.instance.collectionGroup('Level1');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Level1').doc();

  static Stream<Level1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Level1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Level1Record._();
  factory Level1Record([void Function(Level1RecordBuilder) updates]) =
      _$Level1Record;

  static Level1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLevel1RecordData({
  int? totalUsers,
  int? income,
}) {
  final firestoreData = serializers.toFirestore(
    Level1Record.serializer,
    Level1Record(
      (l) => l
        ..totalUsers = totalUsers
        ..income = income
        ..usersInlevel = null,
    ),
  );

  return firestoreData;
}
