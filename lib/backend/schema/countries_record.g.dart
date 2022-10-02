// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountriesRecord> _$countriesRecordSerializer =
    new _$CountriesRecordSerializer();

class _$CountriesRecordSerializer
    implements StructuredSerializer<CountriesRecord> {
  @override
  final Iterable<Type> types = const [CountriesRecord, _$CountriesRecord];
  @override
  final String wireName = 'CountriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.countryName;
    if (value != null) {
      result
        ..add('CountryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryMap;
    if (value != null) {
      result
        ..add('CountryMap')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CountriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CountryName':
          result.countryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CountryMap':
          result.countryMap = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CountriesRecord extends CountriesRecord {
  @override
  final String? countryName;
  @override
  final LatLng? countryMap;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CountriesRecord([void Function(CountriesRecordBuilder)? updates]) =>
      (new CountriesRecordBuilder()..update(updates))._build();

  _$CountriesRecord._({this.countryName, this.countryMap, this.ffRef})
      : super._();

  @override
  CountriesRecord rebuild(void Function(CountriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesRecordBuilder toBuilder() =>
      new CountriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesRecord &&
        countryName == other.countryName &&
        countryMap == other.countryMap &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, countryName.hashCode), countryMap.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountriesRecord')
          ..add('countryName', countryName)
          ..add('countryMap', countryMap)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CountriesRecordBuilder
    implements Builder<CountriesRecord, CountriesRecordBuilder> {
  _$CountriesRecord? _$v;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  LatLng? _countryMap;
  LatLng? get countryMap => _$this._countryMap;
  set countryMap(LatLng? countryMap) => _$this._countryMap = countryMap;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CountriesRecordBuilder() {
    CountriesRecord._initializeBuilder(this);
  }

  CountriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryName = $v.countryName;
      _countryMap = $v.countryMap;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountriesRecord;
  }

  @override
  void update(void Function(CountriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountriesRecord build() => _build();

  _$CountriesRecord _build() {
    final _$result = _$v ??
        new _$CountriesRecord._(
            countryName: countryName, countryMap: countryMap, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
