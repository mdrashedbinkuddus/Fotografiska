import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'artists_struct.g.dart';

abstract class ArtistsStruct
    implements Built<ArtistsStruct, ArtistsStructBuilder> {
  static Serializer<ArtistsStruct> get serializer => _$artistsStructSerializer;

  @BuiltValueField(wireName: 'ArtistsPseudonymName')
  String? get artistsPseudonymName;

  String? get artistRealName;

  String? get artistContactemail;

  String? get artistContactTel;

  String? get artistAdress;

  CountriesStruct get artistCountry;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ArtistsStructBuilder builder) => builder
    ..artistsPseudonymName = ''
    ..artistRealName = ''
    ..artistContactemail = ''
    ..artistContactTel = ''
    ..artistAdress = ''
    ..artistCountry = CountriesStructBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  ArtistsStruct._();
  factory ArtistsStruct([void Function(ArtistsStructBuilder) updates]) =
      _$ArtistsStruct;
}

ArtistsStruct createArtistsStruct({
  String? artistsPseudonymName,
  String? artistRealName,
  String? artistContactemail,
  String? artistContactTel,
  String? artistAdress,
  CountriesStruct? artistCountry,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ArtistsStruct(
      (a) => a
        ..artistsPseudonymName = artistsPseudonymName
        ..artistRealName = artistRealName
        ..artistContactemail = artistContactemail
        ..artistContactTel = artistContactTel
        ..artistAdress = artistAdress
        ..artistCountry = artistCountry?.toBuilder() ?? CountriesStructBuilder()
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ArtistsStruct? updateArtistsStruct(
  ArtistsStruct? artists, {
  bool clearUnsetFields = true,
}) =>
    artists != null
        ? (artists.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addArtistsStructData(
  Map<String, dynamic> firestoreData,
  ArtistsStruct? artists,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (artists == null) {
    return;
  }
  if (artists.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && artists.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final artistsData = getArtistsFirestoreData(artists, forFieldValue);
  final nestedData = artistsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = artists.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getArtistsFirestoreData(
  ArtistsStruct? artists, [
  bool forFieldValue = false,
]) {
  if (artists == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ArtistsStruct.serializer, artists);

  // Handle nested data for "artistCountry" field.
  addCountriesStructData(
      firestoreData, artists.artistCountry, 'artistCountry', forFieldValue);

  // Add any Firestore field values
  artists.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getArtistsListFirestoreData(
  List<ArtistsStruct>? artistss,
) =>
    artistss?.map((a) => getArtistsFirestoreData(a, true)).toList() ?? [];
