import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'all_sponsors_struct.g.dart';

abstract class AllSponsorsStruct
    implements Built<AllSponsorsStruct, AllSponsorsStructBuilder> {
  static Serializer<AllSponsorsStruct> get serializer =>
      _$allSponsorsStructSerializer;

  @BuiltValueField(wireName: 'RefferralID')
  BuiltList<DocumentReference>? get refferralID;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AllSponsorsStructBuilder builder) => builder
    ..refferralID = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  AllSponsorsStruct._();
  factory AllSponsorsStruct([void Function(AllSponsorsStructBuilder) updates]) =
      _$AllSponsorsStruct;
}

AllSponsorsStruct createAllSponsorsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AllSponsorsStruct(
      (a) => a
        ..refferralID = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AllSponsorsStruct? updateAllSponsorsStruct(
  AllSponsorsStruct? allSponsors, {
  bool clearUnsetFields = true,
}) =>
    allSponsors != null
        ? (allSponsors.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAllSponsorsStructData(
  Map<String, dynamic> firestoreData,
  AllSponsorsStruct? allSponsors,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (allSponsors == null) {
    return;
  }
  if (allSponsors.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && allSponsors.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final allSponsorsData =
      getAllSponsorsFirestoreData(allSponsors, forFieldValue);
  final nestedData =
      allSponsorsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = allSponsors.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAllSponsorsFirestoreData(
  AllSponsorsStruct? allSponsors, [
  bool forFieldValue = false,
]) {
  if (allSponsors == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AllSponsorsStruct.serializer, allSponsors);

  // Add any Firestore field values
  allSponsors.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAllSponsorsListFirestoreData(
  List<AllSponsorsStruct>? allSponsorss,
) =>
    allSponsorss?.map((a) => getAllSponsorsFirestoreData(a, true)).toList() ??
    [];
