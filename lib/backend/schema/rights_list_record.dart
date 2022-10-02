import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rights_list_record.g.dart';

abstract class RightsListRecord
    implements Built<RightsListRecord, RightsListRecordBuilder> {
  static Serializer<RightsListRecord> get serializer =>
      _$rightsListRecordSerializer;

  String? get rightsTitle;

  DocumentReference? get rightsCreator;

  DateTime? get createdOn;

  bool? get isActive;

  DateTime? get rightsDueDate;

  String? get rightsHolder;

  BuiltList<DocumentReference>? get rigghtsTerritory;

  DateTime? get rightsStartDate;

  BuiltList<DocumentReference>? get refAssetList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RightsListRecordBuilder builder) => builder
    ..rightsTitle = ''
    ..isActive = false
    ..rightsHolder = ''
    ..rigghtsTerritory = ListBuilder()
    ..refAssetList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RightsList');

  static Stream<RightsListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RightsListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RightsListRecord._();
  factory RightsListRecord([void Function(RightsListRecordBuilder) updates]) =
      _$RightsListRecord;

  static RightsListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRightsListRecordData({
  String? rightsTitle,
  DocumentReference? rightsCreator,
  DateTime? createdOn,
  bool? isActive,
  DateTime? rightsDueDate,
  String? rightsHolder,
  DateTime? rightsStartDate,
}) {
  final firestoreData = serializers.toFirestore(
    RightsListRecord.serializer,
    RightsListRecord(
      (r) => r
        ..rightsTitle = rightsTitle
        ..rightsCreator = rightsCreator
        ..createdOn = createdOn
        ..isActive = isActive
        ..rightsDueDate = rightsDueDate
        ..rightsHolder = rightsHolder
        ..rigghtsTerritory = null
        ..rightsStartDate = rightsStartDate
        ..refAssetList = null,
    ),
  );

  return firestoreData;
}
