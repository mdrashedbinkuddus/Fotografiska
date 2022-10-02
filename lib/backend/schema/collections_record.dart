import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'collections_record.g.dart';

abstract class CollectionsRecord
    implements Built<CollectionsRecord, CollectionsRecordBuilder> {
  static Serializer<CollectionsRecord> get serializer =>
      _$collectionsRecordSerializer;

  DateTime? get exhibitionStartDate;

  DateTime? get exhibitionEndDate;

  String? get exhibitionDescription;

  DocumentReference? get exhibitionLeader;

  String? get exhibitionFeaturedPic;

  String? get exhibitName;

  String? get exhibitSubline;

  DocumentReference? get exhibitionTeam;

  DocumentReference? get exhibitLocation;

  DocumentReference? get exhibitionArtist;

  DateTime? get createdTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollectionsRecordBuilder builder) => builder
    ..exhibitionDescription = ''
    ..exhibitionFeaturedPic = ''
    ..exhibitName = ''
    ..exhibitSubline = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Collections');

  static Stream<CollectionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollectionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollectionsRecord._();
  factory CollectionsRecord([void Function(CollectionsRecordBuilder) updates]) =
      _$CollectionsRecord;

  static CollectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollectionsRecordData({
  DateTime? exhibitionStartDate,
  DateTime? exhibitionEndDate,
  String? exhibitionDescription,
  DocumentReference? exhibitionLeader,
  String? exhibitionFeaturedPic,
  String? exhibitName,
  String? exhibitSubline,
  DocumentReference? exhibitionTeam,
  DocumentReference? exhibitLocation,
  DocumentReference? exhibitionArtist,
  DateTime? createdTime,
}) {
  final firestoreData = serializers.toFirestore(
    CollectionsRecord.serializer,
    CollectionsRecord(
      (c) => c
        ..exhibitionStartDate = exhibitionStartDate
        ..exhibitionEndDate = exhibitionEndDate
        ..exhibitionDescription = exhibitionDescription
        ..exhibitionLeader = exhibitionLeader
        ..exhibitionFeaturedPic = exhibitionFeaturedPic
        ..exhibitName = exhibitName
        ..exhibitSubline = exhibitSubline
        ..exhibitionTeam = exhibitionTeam
        ..exhibitLocation = exhibitLocation
        ..exhibitionArtist = exhibitionArtist
        ..createdTime = createdTime,
    ),
  );

  return firestoreData;
}
