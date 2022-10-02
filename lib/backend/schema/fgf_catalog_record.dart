import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fgf_catalog_record.g.dart';

abstract class FgfCatalogRecord
    implements Built<FgfCatalogRecord, FgfCatalogRecordBuilder> {
  static Serializer<FgfCatalogRecord> get serializer =>
      _$fgfCatalogRecordSerializer;

  String? get catTitle;

  BuiltList<String>? get categories;

  BuiltList<String>? get assetCollections;

  String? get imgHeader;

  int? get sortInt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FgfCatalogRecordBuilder builder) => builder
    ..catTitle = ''
    ..categories = ListBuilder()
    ..assetCollections = ListBuilder()
    ..imgHeader = ''
    ..sortInt = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fgfCatalog');

  static Stream<FgfCatalogRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FgfCatalogRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FgfCatalogRecord._();
  factory FgfCatalogRecord([void Function(FgfCatalogRecordBuilder) updates]) =
      _$FgfCatalogRecord;

  static FgfCatalogRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFgfCatalogRecordData({
  String? catTitle,
  String? imgHeader,
  int? sortInt,
}) {
  final firestoreData = serializers.toFirestore(
    FgfCatalogRecord.serializer,
    FgfCatalogRecord(
      (f) => f
        ..catTitle = catTitle
        ..categories = null
        ..assetCollections = null
        ..imgHeader = imgHeader
        ..sortInt = sortInt,
    ),
  );

  return firestoreData;
}
