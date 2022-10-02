import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'asset_notes_record.g.dart';

abstract class AssetNotesRecord
    implements Built<AssetNotesRecord, AssetNotesRecordBuilder> {
  static Serializer<AssetNotesRecord> get serializer =>
      _$assetNotesRecordSerializer;

  DocumentReference? get userCreated;

  @BuiltValueField(wireName: 'Note')
  String? get note;

  DocumentReference? get assetRef;

  DateTime? get timeCreated;

  @BuiltValueField(wireName: 'UserName')
  String? get userName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AssetNotesRecordBuilder builder) => builder
    ..note = ''
    ..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assetNotes');

  static Stream<AssetNotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AssetNotesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AssetNotesRecord._();
  factory AssetNotesRecord([void Function(AssetNotesRecordBuilder) updates]) =
      _$AssetNotesRecord;

  static AssetNotesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAssetNotesRecordData({
  DocumentReference? userCreated,
  String? note,
  DocumentReference? assetRef,
  DateTime? timeCreated,
  String? userName,
}) {
  final firestoreData = serializers.toFirestore(
    AssetNotesRecord.serializer,
    AssetNotesRecord(
      (a) => a
        ..userCreated = userCreated
        ..note = note
        ..assetRef = assetRef
        ..timeCreated = timeCreated
        ..userName = userName,
    ),
  );

  return firestoreData;
}
