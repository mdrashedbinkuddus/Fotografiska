import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'artists_record.g.dart';

abstract class ArtistsRecord
    implements Built<ArtistsRecord, ArtistsRecordBuilder> {
  static Serializer<ArtistsRecord> get serializer => _$artistsRecordSerializer;

  @BuiltValueField(wireName: 'ArtistName')
  String? get artistName;

  LatLng? get location;

  @BuiltValueField(wireName: 'Agent')
  String? get agent;

  String? get contactEmail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ArtistsRecordBuilder builder) => builder
    ..artistName = ''
    ..agent = ''
    ..contactEmail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Artists');

  static Stream<ArtistsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ArtistsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ArtistsRecord._();
  factory ArtistsRecord([void Function(ArtistsRecordBuilder) updates]) =
      _$ArtistsRecord;

  static ArtistsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createArtistsRecordData({
  String? artistName,
  LatLng? location,
  String? agent,
  String? contactEmail,
}) {
  final firestoreData = serializers.toFirestore(
    ArtistsRecord.serializer,
    ArtistsRecord(
      (a) => a
        ..artistName = artistName
        ..location = location
        ..agent = agent
        ..contactEmail = contactEmail,
    ),
  );

  return firestoreData;
}
