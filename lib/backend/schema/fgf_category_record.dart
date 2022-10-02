import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fgf_category_record.g.dart';

abstract class FgfCategoryRecord
    implements Built<FgfCategoryRecord, FgfCategoryRecordBuilder> {
  static Serializer<FgfCategoryRecord> get serializer =>
      _$fgfCategoryRecordSerializer;

  String? get catTitle;

  DocumentReference? get catOwner;

  BuiltList<DocumentReference>? get fgfCatalogList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FgfCategoryRecordBuilder builder) => builder
    ..catTitle = ''
    ..fgfCatalogList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fgfCategory');

  static Stream<FgfCategoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FgfCategoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FgfCategoryRecord._();
  factory FgfCategoryRecord([void Function(FgfCategoryRecordBuilder) updates]) =
      _$FgfCategoryRecord;

  static FgfCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFgfCategoryRecordData({
  String? catTitle,
  DocumentReference? catOwner,
}) {
  final firestoreData = serializers.toFirestore(
    FgfCategoryRecord.serializer,
    FgfCategoryRecord(
      (f) => f
        ..catTitle = catTitle
        ..catOwner = catOwner
        ..fgfCatalogList = null,
    ),
  );

  return firestoreData;
}
