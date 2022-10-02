import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'countries_struct.g.dart';

abstract class CountriesStruct
    implements Built<CountriesStruct, CountriesStructBuilder> {
  static Serializer<CountriesStruct> get serializer =>
      _$countriesStructSerializer;

  @BuiltValueField(wireName: 'CountryMap')
  LatLng? get countryMap;

  @BuiltValueField(wireName: 'CountryName')
  String? get countryName;

  @BuiltValueField(wireName: 'CountryFlagImg')
  String? get countryFlagImg;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CountriesStructBuilder builder) => builder
    ..countryName = ''
    ..countryFlagImg = ''
    ..firestoreUtilData = FirestoreUtilData();

  CountriesStruct._();
  factory CountriesStruct([void Function(CountriesStructBuilder) updates]) =
      _$CountriesStruct;
}

CountriesStruct createCountriesStruct({
  LatLng? countryMap,
  String? countryName,
  String? countryFlagImg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountriesStruct(
      (c) => c
        ..countryMap = countryMap
        ..countryName = countryName
        ..countryFlagImg = countryFlagImg
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CountriesStruct? updateCountriesStruct(
  CountriesStruct? countries, {
  bool clearUnsetFields = true,
}) =>
    countries != null
        ? (countries.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCountriesStructData(
  Map<String, dynamic> firestoreData,
  CountriesStruct? countries,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (countries == null) {
    return;
  }
  if (countries.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && countries.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countriesData = getCountriesFirestoreData(countries, forFieldValue);
  final nestedData = countriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = countries.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCountriesFirestoreData(
  CountriesStruct? countries, [
  bool forFieldValue = false,
]) {
  if (countries == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(CountriesStruct.serializer, countries);

  // Add any Firestore field values
  countries.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountriesListFirestoreData(
  List<CountriesStruct>? countriess,
) =>
    countriess?.map((c) => getCountriesFirestoreData(c, true)).toList() ?? [];
