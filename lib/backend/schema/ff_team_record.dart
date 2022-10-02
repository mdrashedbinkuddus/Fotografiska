import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ff_team_record.g.dart';

abstract class FfTeamRecord
    implements Built<FfTeamRecord, FfTeamRecordBuilder> {
  static Serializer<FfTeamRecord> get serializer => _$ffTeamRecordSerializer;

  @BuiltValueField(wireName: 'TeamName')
  String? get teamName;

  BuiltList<DocumentReference>? get teamMember;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FfTeamRecordBuilder builder) => builder
    ..teamName = ''
    ..teamMember = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ffTeam');

  static Stream<FfTeamRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FfTeamRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FfTeamRecord._();
  factory FfTeamRecord([void Function(FfTeamRecordBuilder) updates]) =
      _$FfTeamRecord;

  static FfTeamRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFfTeamRecordData({
  String? teamName,
}) {
  final firestoreData = serializers.toFirestore(
    FfTeamRecord.serializer,
    FfTeamRecord(
      (f) => f
        ..teamName = teamName
        ..teamMember = null,
    ),
  );

  return firestoreData;
}
