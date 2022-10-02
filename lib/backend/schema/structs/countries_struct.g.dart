// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountriesStruct> _$countriesStructSerializer =
    new _$CountriesStructSerializer();

class _$CountriesStructSerializer
    implements StructuredSerializer<CountriesStruct> {
  @override
  final Iterable<Type> types = const [CountriesStruct, _$CountriesStruct];
  @override
  final String wireName = 'CountriesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountriesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.countryMap;
    if (value != null) {
      result
        ..add('CountryMap')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.countryName;
    if (value != null) {
      result
        ..add('CountryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryFlagImg;
    if (value != null) {
      result
        ..add('CountryFlagImg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountriesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountriesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CountryMap':
          result.countryMap = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'CountryName':
          result.countryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CountryFlagImg':
          result.countryFlagImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$CountriesStruct extends CountriesStruct {
  @override
  final LatLng? countryMap;
  @override
  final String? countryName;
  @override
  final String? countryFlagImg;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CountriesStruct([void Function(CountriesStructBuilder)? updates]) =>
      (new CountriesStructBuilder()..update(updates))._build();

  _$CountriesStruct._(
      {this.countryMap,
      this.countryName,
      this.countryFlagImg,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CountriesStruct', 'firestoreUtilData');
  }

  @override
  CountriesStruct rebuild(void Function(CountriesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesStructBuilder toBuilder() =>
      new CountriesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesStruct &&
        countryMap == other.countryMap &&
        countryName == other.countryName &&
        countryFlagImg == other.countryFlagImg &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, countryMap.hashCode), countryName.hashCode),
            countryFlagImg.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountriesStruct')
          ..add('countryMap', countryMap)
          ..add('countryName', countryName)
          ..add('countryFlagImg', countryFlagImg)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CountriesStructBuilder
    implements Builder<CountriesStruct, CountriesStructBuilder> {
  _$CountriesStruct? _$v;

  LatLng? _countryMap;
  LatLng? get countryMap => _$this._countryMap;
  set countryMap(LatLng? countryMap) => _$this._countryMap = countryMap;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  String? _countryFlagImg;
  String? get countryFlagImg => _$this._countryFlagImg;
  set countryFlagImg(String? countryFlagImg) =>
      _$this._countryFlagImg = countryFlagImg;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CountriesStructBuilder() {
    CountriesStruct._initializeBuilder(this);
  }

  CountriesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryMap = $v.countryMap;
      _countryName = $v.countryName;
      _countryFlagImg = $v.countryFlagImg;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountriesStruct;
  }

  @override
  void update(void Function(CountriesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountriesStruct build() => _build();

  _$CountriesStruct _build() {
    final _$result = _$v ??
        new _$CountriesStruct._(
            countryMap: countryMap,
            countryName: countryName,
            countryFlagImg: countryFlagImg,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'CountriesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
