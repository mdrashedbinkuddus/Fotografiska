import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ff_location_record.g.dart';

abstract class FfLocationRecord
    implements Built<FfLocationRecord, FfLocationRecordBuilder> {
  static Serializer<FfLocationRecord> get serializer =>
      _$ffLocationRecordSerializer;

  @BuiltValueField(wireName: 'LocationName')
  String? get locationName;

  @BuiltValueField(wireName: 'LocationAdress')
  LatLng? get locationAdress;

  @BuiltValueField(wireName: 'LocationIcon')
  String? get locationIcon;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FfLocationRecordBuilder builder) => builder
    ..locationName = ''
    ..locationIcon = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ffLocation');

  static Stream<FfLocationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FfLocationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FfLocationRecord._();
  factory FfLocationRecord([void Function(FfLocationRecordBuilder) updates]) =
      _$FfLocationRecord;

  static FfLocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFfLocationRecordData({
  String? locationName,
  LatLng? locationAdress,
  String? locationIcon,
}) {
  final firestoreData = serializers.toFirestore(
    FfLocationRecord.serializer,
    FfLocationRecord(
      (f) => f
        ..locationName = locationName
        ..locationAdress = locationAdress
        ..locationIcon = locationIcon,
    ),
  );

  return firestoreData;
}
