// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArtistsStruct> _$artistsStructSerializer =
    new _$ArtistsStructSerializer();

class _$ArtistsStructSerializer implements StructuredSerializer<ArtistsStruct> {
  @override
  final Iterable<Type> types = const [ArtistsStruct, _$ArtistsStruct];
  @override
  final String wireName = 'ArtistsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArtistsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'artistCountry',
      serializers.serialize(object.artistCountry,
          specifiedType: const FullType(CountriesStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.artistsPseudonymName;
    if (value != null) {
      result
        ..add('ArtistsPseudonymName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistRealName;
    if (value != null) {
      result
        ..add('artistRealName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistContactemail;
    if (value != null) {
      result
        ..add('artistContactemail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistContactTel;
    if (value != null) {
      result
        ..add('artistContactTel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistAdress;
    if (value != null) {
      result
        ..add('artistAdress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ArtistsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtistsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ArtistsPseudonymName':
          result.artistsPseudonymName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artistRealName':
          result.artistRealName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artistContactemail':
          result.artistContactemail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artistContactTel':
          result.artistContactTel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artistAdress':
          result.artistAdress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'artistCountry':
          result.artistCountry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CountriesStruct))!
              as CountriesStruct);
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

class _$ArtistsStruct extends ArtistsStruct {
  @override
  final String? artistsPseudonymName;
  @override
  final String? artistRealName;
  @override
  final String? artistContactemail;
  @override
  final String? artistContactTel;
  @override
  final String? artistAdress;
  @override
  final CountriesStruct artistCountry;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ArtistsStruct([void Function(ArtistsStructBuilder)? updates]) =>
      (new ArtistsStructBuilder()..update(updates))._build();

  _$ArtistsStruct._(
      {this.artistsPseudonymName,
      this.artistRealName,
      this.artistContactemail,
      this.artistContactTel,
      this.artistAdress,
      required this.artistCountry,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        artistCountry, r'ArtistsStruct', 'artistCountry');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ArtistsStruct', 'firestoreUtilData');
  }

  @override
  ArtistsStruct rebuild(void Function(ArtistsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtistsStructBuilder toBuilder() => new ArtistsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArtistsStruct &&
        artistsPseudonymName == other.artistsPseudonymName &&
        artistRealName == other.artistRealName &&
        artistContactemail == other.artistContactemail &&
        artistContactTel == other.artistContactTel &&
        artistAdress == other.artistAdress &&
        artistCountry == other.artistCountry &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, artistsPseudonymName.hashCode),
                            artistRealName.hashCode),
                        artistContactemail.hashCode),
                    artistContactTel.hashCode),
                artistAdress.hashCode),
            artistCountry.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArtistsStruct')
          ..add('artistsPseudonymName', artistsPseudonymName)
          ..add('artistRealName', artistRealName)
          ..add('artistContactemail', artistContactemail)
          ..add('artistContactTel', artistContactTel)
          ..add('artistAdress', artistAdress)
          ..add('artistCountry', artistCountry)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ArtistsStructBuilder
    implements Builder<ArtistsStruct, ArtistsStructBuilder> {
  _$ArtistsStruct? _$v;

  String? _artistsPseudonymName;
  String? get artistsPseudonymName => _$this._artistsPseudonymName;
  set artistsPseudonymName(String? artistsPseudonymName) =>
      _$this._artistsPseudonymName = artistsPseudonymName;

  String? _artistRealName;
  String? get artistRealName => _$this._artistRealName;
  set artistRealName(String? artistRealName) =>
      _$this._artistRealName = artistRealName;

  String? _artistContactemail;
  String? get artistContactemail => _$this._artistContactemail;
  set artistContactemail(String? artistContactemail) =>
      _$this._artistContactemail = artistContactemail;

  String? _artistContactTel;
  String? get artistContactTel => _$this._artistContactTel;
  set artistContactTel(String? artistContactTel) =>
      _$this._artistContactTel = artistContactTel;

  String? _artistAdress;
  String? get artistAdress => _$this._artistAdress;
  set artistAdress(String? artistAdress) => _$this._artistAdress = artistAdress;

  CountriesStructBuilder? _artistCountry;
  CountriesStructBuilder get artistCountry =>
      _$this._artistCountry ??= new CountriesStructBuilder();
  set artistCountry(CountriesStructBuilder? artistCountry) =>
      _$this._artistCountry = artistCountry;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ArtistsStructBuilder() {
    ArtistsStruct._initializeBuilder(this);
  }

  ArtistsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistsPseudonymName = $v.artistsPseudonymName;
      _artistRealName = $v.artistRealName;
      _artistContactemail = $v.artistContactemail;
      _artistContactTel = $v.artistContactTel;
      _artistAdress = $v.artistAdress;
      _artistCountry = $v.artistCountry.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArtistsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArtistsStruct;
  }

  @override
  void update(void Function(ArtistsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArtistsStruct build() => _build();

  _$ArtistsStruct _build() {
    _$ArtistsStruct _$result;
    try {
      _$result = _$v ??
          new _$ArtistsStruct._(
              artistsPseudonymName: artistsPseudonymName,
              artistRealName: artistRealName,
              artistContactemail: artistContactemail,
              artistContactTel: artistContactTel,
              artistAdress: artistAdress,
              artistCountry: artistCountry.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'ArtistsStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'artistCountry';
        artistCountry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ArtistsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
