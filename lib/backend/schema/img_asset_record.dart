import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'img_asset_record.g.dart';

abstract class ImgAssetRecord
    implements Built<ImgAssetRecord, ImgAssetRecordBuilder> {
  static Serializer<ImgAssetRecord> get serializer =>
      _$imgAssetRecordSerializer;

  @BuiltValueField(wireName: 'AssetName')
  String? get assetName;

  @BuiltValueField(wireName: 'AssetImage')
  String? get assetImage;

  @BuiltValueField(wireName: 'AssetCreator')
  DocumentReference? get assetCreator;

  DateTime? get assetCreationTime;

  String? get assetDescription;

  String? get assetTags;

  DocumentReference? get assetRight;

  DocumentReference? get assetArtist;

  @BuiltValueField(wireName: 'VersionNr')
  double? get versionNr;

  DocumentReference? get assetColRef;

  bool? get dwldAllowed;

  bool? get sharingAllowed;

  String? get assetNewName;

  @BuiltValueField(wireName: 'Catalog')
  String? get catalog;

  @BuiltValueField(wireName: 'Category')
  String? get category;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImgAssetRecordBuilder builder) => builder
    ..assetName = ''
    ..assetImage = ''
    ..assetDescription = ''
    ..assetTags = ''
    ..versionNr = 0.0
    ..dwldAllowed = false
    ..sharingAllowed = false
    ..assetNewName = ''
    ..catalog = ''
    ..category = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imgAsset');

  static Stream<ImgAssetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImgAssetRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImgAssetRecord._();
  factory ImgAssetRecord([void Function(ImgAssetRecordBuilder) updates]) =
      _$ImgAssetRecord;

  static ImgAssetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImgAssetRecordData({
  String? assetName,
  String? assetImage,
  DocumentReference? assetCreator,
  DateTime? assetCreationTime,
  String? assetDescription,
  String? assetTags,
  DocumentReference? assetRight,
  DocumentReference? assetArtist,
  double? versionNr,
  DocumentReference? assetColRef,
  bool? dwldAllowed,
  bool? sharingAllowed,
  String? assetNewName,
  String? catalog,
  String? category,
}) {
  final firestoreData = serializers.toFirestore(
    ImgAssetRecord.serializer,
    ImgAssetRecord(
      (i) => i
        ..assetName = assetName
        ..assetImage = assetImage
        ..assetCreator = assetCreator
        ..assetCreationTime = assetCreationTime
        ..assetDescription = assetDescription
        ..assetTags = assetTags
        ..assetRight = assetRight
        ..assetArtist = assetArtist
        ..versionNr = versionNr
        ..assetColRef = assetColRef
        ..dwldAllowed = dwldAllowed
        ..sharingAllowed = sharingAllowed
        ..assetNewName = assetNewName
        ..catalog = catalog
        ..category = category,
    ),
  );

  return firestoreData;
}
