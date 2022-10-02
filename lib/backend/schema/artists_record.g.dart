// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArtistsRecord> _$artistsRecordSerializer =
    new _$ArtistsRecordSerializer();

class _$ArtistsRecordSerializer implements StructuredSerializer<ArtistsRecord> {
  @override
  final Iterable<Type> types = const [ArtistsRecord, _$ArtistsRecord];
  @override
  final String wireName = 'ArtistsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArtistsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.artistName;
    if (value != null) {
      result
        ..add('ArtistName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.agent;
    if (value != null) {
      result
        ..add('Agent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactEmail;
    if (value != null) {
      result
        ..add('contactEmail')
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
  ArtistsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtistsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ArtistName':
          result.artistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Agent':
          result.agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactEmail':
          result.contactEmail = serializers.deserialize(value,
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

class _$ArtistsRecord extends ArtistsRecord {
  @override
  final String? artistName;
  @override
  final LatLng? location;
  @override
  final String? agent;
  @override
  final String? contactEmail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ArtistsRecord([void Function(ArtistsRecordBuilder)? updates]) =>
      (new ArtistsRecordBuilder()..update(updates))._build();

  _$ArtistsRecord._(
      {this.artistName,
      this.location,
      this.agent,
      this.contactEmail,
      this.ffRef})
      : super._();

  @override
  ArtistsRecord rebuild(void Function(ArtistsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtistsRecordBuilder toBuilder() => new ArtistsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArtistsRecord &&
        artistName == other.artistName &&
        location == other.location &&
        agent == other.agent &&
        contactEmail == other.contactEmail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, artistName.hashCode), location.hashCode),
                agent.hashCode),
            contactEmail.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArtistsRecord')
          ..add('artistName', artistName)
          ..add('location', location)
          ..add('agent', agent)
          ..add('contactEmail', contactEmail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ArtistsRecordBuilder
    implements Builder<ArtistsRecord, ArtistsRecordBuilder> {
  _$ArtistsRecord? _$v;

  String? _artistName;
  String? get artistName => _$this._artistName;
  set artistName(String? artistName) => _$this._artistName = artistName;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _agent;
  String? get agent => _$this._agent;
  set agent(String? agent) => _$this._agent = agent;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ArtistsRecordBuilder() {
    ArtistsRecord._initializeBuilder(this);
  }

  ArtistsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistName = $v.artistName;
      _location = $v.location;
      _agent = $v.agent;
      _contactEmail = $v.contactEmail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArtistsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArtistsRecord;
  }

  @override
  void update(void Function(ArtistsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArtistsRecord build() => _build();

  _$ArtistsRecord _build() {
    final _$result = _$v ??
        new _$ArtistsRecord._(
            artistName: artistName,
            location: location,
            agent: agent,
            contactEmail: contactEmail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
