import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'asset_collection_record.g.dart';

abstract class AssetCollectionRecord
    implements Built<AssetCollectionRecord, AssetCollectionRecordBuilder> {
  static Serializer<AssetCollectionRecord> get serializer =>
      _$assetCollectionRecordSerializer;

  BuiltList<DocumentReference>? get assetRefList;

  String? get assetCollectionName;

  BuiltList<DocumentReference>? get creatorsRef;

  DocumentReference? get exhibitionRef;

  String? get actualImage;

  DocumentReference? get rightRef;

  DocumentReference? get assetArtists;

  DateTime? get createdOn;

  double? get latestVersionNr;

  bool? get dwldAllowed;

  bool? get sharingAllowed;

  @BuiltValueField(wireName: 'Category')
  String? get category;

  @BuiltValueField(wireName: 'Catalog')
  String? get catalog;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AssetCollectionRecordBuilder builder) =>
      builder
        ..assetRefList = ListBuilder()
        ..assetCollectionName = ''
        ..creatorsRef = ListBuilder()
        ..actualImage = ''
        ..latestVersionNr = 0.0
        ..dwldAllowed = false
        ..sharingAllowed = false
        ..category = ''
        ..catalog = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assetCollection');

  static Stream<AssetCollectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AssetCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AssetCollectionRecord._();
  factory AssetCollectionRecord(
          [void Function(AssetCollectionRecordBuilder) updates]) =
      _$AssetCollectionRecord;

  static AssetCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAssetCollectionRecordData({
  String? assetCollectionName,
  DocumentReference? exhibitionRef,
  String? actualImage,
  DocumentReference? rightRef,
  DocumentReference? assetArtists,
  DateTime? createdOn,
  double? latestVersionNr,
  bool? dwldAllowed,
  bool? sharingAllowed,
  String? category,
  String? catalog,
}) {
  final firestoreData = serializers.toFirestore(
    AssetCollectionRecord.serializer,
    AssetCollectionRecord(
      (a) => a
        ..assetRefList = null
        ..assetCollectionName = assetCollectionName
        ..creatorsRef = null
        ..exhibitionRef = exhibitionRef
        ..actualImage = actualImage
        ..rightRef = rightRef
        ..assetArtists = assetArtists
        ..createdOn = createdOn
        ..latestVersionNr = latestVersionNr
        ..dwldAllowed = dwldAllowed
        ..sharingAllowed = sharingAllowed
        ..category = category
        ..catalog = catalog,
    ),
  );

  return firestoreData;
}
