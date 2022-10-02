// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ff_location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FfLocationRecord> _$ffLocationRecordSerializer =
    new _$FfLocationRecordSerializer();

class _$FfLocationRecordSerializer
    implements StructuredSerializer<FfLocationRecord> {
  @override
  final Iterable<Type> types = const [FfLocationRecord, _$FfLocationRecord];
  @override
  final String wireName = 'FfLocationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FfLocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.locationName;
    if (value != null) {
      result
        ..add('LocationName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationAdress;
    if (value != null) {
      result
        ..add('LocationAdress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.locationIcon;
    if (value != null) {
      result
        ..add('LocationIcon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FfLocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FfLocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'LocationName':
          result.locationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LocationAdress':
          result.locationAdress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'LocationIcon':
          result.locationIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FfLocationRecord extends FfLocationRecord {
  @override
  final String? locationName;
  @override
  final LatLng? locationAdress;
  @override
  final String? locationIcon;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FfLocationRecord(
          [void Function(FfLocationRecordBuilder)? updates]) =>
      (new FfLocationRecordBuilder()..update(updates))._build();

  _$FfLocationRecord._(
      {this.locationName, this.locationAdress, this.locationIcon, this.ffRef})
      : super._();

  @override
  FfLocationRecord rebuild(void Function(FfLocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FfLocationRecordBuilder toBuilder() =>
      new FfLocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FfLocationRecord &&
        locationName == other.locationName &&
        locationAdress == other.locationAdress &&
        locationIcon == other.locationIcon &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, locationName.hashCode), locationAdress.hashCode),
            locationIcon.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FfLocationRecord')
          ..add('locationName', locationName)
          ..add('locationAdress', locationAdress)
          ..add('locationIcon', locationIcon)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FfLocationRecordBuilder
    implements Builder<FfLocationRecord, FfLocationRecordBuilder> {
  _$FfLocationRecord? _$v;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  LatLng? _locationAdress;
  LatLng? get locationAdress => _$this._locationAdress;
  set locationAdress(LatLng? locationAdress) =>
      _$this._locationAdress = locationAdress;

  String? _locationIcon;
  String? get locationIcon => _$this._locationIcon;
  set locationIcon(String? locationIcon) => _$this._locationIcon = locationIcon;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FfLocationRecordBuilder() {
    FfLocationRecord._initializeBuilder(this);
  }

  FfLocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationName = $v.locationName;
      _locationAdress = $v.locationAdress;
      _locationIcon = $v.locationIcon;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FfLocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FfLocationRecord;
  }

  @override
  void update(void Function(FfLocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FfLocationRecord build() => _build();

  _$FfLocationRecord _build() {
    final _$result = _$v ??
        new _$FfLocationRecord._(
            locationName: locationName,
            locationAdress: locationAdress,
            locationIcon: locationIcon,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
