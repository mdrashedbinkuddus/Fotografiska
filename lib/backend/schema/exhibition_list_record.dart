import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exhibition_list_record.g.dart';

abstract class ExhibitionListRecord
    implements Built<ExhibitionListRecord, ExhibitionListRecordBuilder> {
  static Serializer<ExhibitionListRecord> get serializer =>
      _$exhibitionListRecordSerializer;

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

  static void _initializeBuilder(ExhibitionListRecordBuilder builder) => builder
    ..exhibitionDescription = ''
    ..exhibitionFeaturedPic = ''
    ..exhibitName = ''
    ..exhibitSubline = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ExhibitionList');

  static Stream<ExhibitionListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExhibitionListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExhibitionListRecord._();
  factory ExhibitionListRecord(
          [void Function(ExhibitionListRecordBuilder) updates]) =
      _$ExhibitionListRecord;

  static ExhibitionListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExhibitionListRecordData({
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
    ExhibitionListRecord.serializer,
    ExhibitionListRecord(
      (e) => e
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
