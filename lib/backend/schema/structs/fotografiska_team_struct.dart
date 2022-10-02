import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'fotografiska_team_struct.g.dart';

abstract class FotografiskaTeamStruct
    implements Built<FotografiskaTeamStruct, FotografiskaTeamStructBuilder> {
  static Serializer<FotografiskaTeamStruct> get serializer =>
      _$fotografiskaTeamStructSerializer;

  @BuiltValueField(wireName: 'TeamLocationCity')
  String? get teamLocationCity;

  @BuiltValueField(wireName: 'TeamMembers')
  BuiltList<DocumentReference>? get teamMembers;

  String? get ffIcon;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(FotografiskaTeamStructBuilder builder) =>
      builder
        ..teamLocationCity = ''
        ..teamMembers = ListBuilder()
        ..ffIcon = ''
        ..firestoreUtilData = FirestoreUtilData();

  FotografiskaTeamStruct._();
  factory FotografiskaTeamStruct(
          [void Function(FotografiskaTeamStructBuilder) updates]) =
      _$FotografiskaTeamStruct;
}

FotografiskaTeamStruct createFotografiskaTeamStruct({
  String? teamLocationCity,
  String? ffIcon,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FotografiskaTeamStruct(
      (f) => f
        ..teamLocationCity = teamLocationCity
        ..teamMembers = null
        ..ffIcon = ffIcon
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

FotografiskaTeamStruct? updateFotografiskaTeamStruct(
  FotografiskaTeamStruct? fotografiskaTeam, {
  bool clearUnsetFields = true,
}) =>
    fotografiskaTeam != null
        ? (fotografiskaTeam.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addFotografiskaTeamStructData(
  Map<String, dynamic> firestoreData,
  FotografiskaTeamStruct? fotografiskaTeam,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fotografiskaTeam == null) {
    return;
  }
  if (fotografiskaTeam.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && fotografiskaTeam.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fotografiskaTeamData =
      getFotografiskaTeamFirestoreData(fotografiskaTeam, forFieldValue);
  final nestedData =
      fotografiskaTeamData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = fotografiskaTeam.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getFotografiskaTeamFirestoreData(
  FotografiskaTeamStruct? fotografiskaTeam, [
  bool forFieldValue = false,
]) {
  if (fotografiskaTeam == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      FotografiskaTeamStruct.serializer, fotografiskaTeam);

  // Add any Firestore field values
  fotografiskaTeam.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFotografiskaTeamListFirestoreData(
  List<FotografiskaTeamStruct>? fotografiskaTeams,
) =>
    fotografiskaTeams
        ?.map((f) => getFotografiskaTeamFirestoreData(f, true))
        .toList() ??
    [];
