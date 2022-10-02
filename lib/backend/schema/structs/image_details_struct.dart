import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'image_details_struct.g.dart';

abstract class ImageDetailsStruct
    implements Built<ImageDetailsStruct, ImageDetailsStructBuilder> {
  static Serializer<ImageDetailsStruct> get serializer =>
      _$imageDetailsStructSerializer;

  String? get imageName;

  DateTime? get imageCreationDate;

  String? get imageAuthor;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ImageDetailsStructBuilder builder) => builder
    ..imageName = ''
    ..imageAuthor = ''
    ..firestoreUtilData = FirestoreUtilData();

  ImageDetailsStruct._();
  factory ImageDetailsStruct(
          [void Function(ImageDetailsStructBuilder) updates]) =
      _$ImageDetailsStruct;
}

ImageDetailsStruct createImageDetailsStruct({
  String? imageName,
  DateTime? imageCreationDate,
  String? imageAuthor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageDetailsStruct(
      (i) => i
        ..imageName = imageName
        ..imageCreationDate = imageCreationDate
        ..imageAuthor = imageAuthor
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ImageDetailsStruct? updateImageDetailsStruct(
  ImageDetailsStruct? imageDetails, {
  bool clearUnsetFields = true,
}) =>
    imageDetails != null
        ? (imageDetails.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addImageDetailsStructData(
  Map<String, dynamic> firestoreData,
  ImageDetailsStruct? imageDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageDetails == null) {
    return;
  }
  if (imageDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && imageDetails.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageDetailsData =
      getImageDetailsFirestoreData(imageDetails, forFieldValue);
  final nestedData =
      imageDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = imageDetails.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getImageDetailsFirestoreData(
  ImageDetailsStruct? imageDetails, [
  bool forFieldValue = false,
]) {
  if (imageDetails == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ImageDetailsStruct.serializer, imageDetails);

  // Add any Firestore field values
  imageDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageDetailsListFirestoreData(
  List<ImageDetailsStruct>? imageDetailss,
) =>
    imageDetailss?.map((i) => getImageDetailsFirestoreData(i, true)).toList() ??
    [];
