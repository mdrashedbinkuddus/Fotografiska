// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionsRecord> _$collectionsRecordSerializer =
    new _$CollectionsRecordSerializer();

class _$CollectionsRecordSerializer
    implements StructuredSerializer<CollectionsRecord> {
  @override
  final Iterable<Type> types = const [CollectionsRecord, _$CollectionsRecord];
  @override
  final String wireName = 'CollectionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CollectionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.exhibitionStartDate;
    if (value != null) {
      result
        ..add('exhibitionStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.exhibitionEndDate;
    if (value != null) {
      result
        ..add('exhibitionEndDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.exhibitionDescription;
    if (value != null) {
      result
        ..add('exhibitionDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exhibitionLeader;
    if (value != null) {
      result
        ..add('exhibitionLeader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.exhibitionFeaturedPic;
    if (value != null) {
      result
        ..add('exhibitionFeaturedPic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exhibitName;
    if (value != null) {
      result
        ..add('exhibitName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exhibitSubline;
    if (value != null) {
      result
        ..add('exhibitSubline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exhibitionTeam;
    if (value != null) {
      result
        ..add('exhibitionTeam')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.exhibitLocation;
    if (value != null) {
      result
        ..add('exhibitLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.exhibitionArtist;
    if (value != null) {
      result
        ..add('exhibitionArtist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('createdTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CollectionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exhibitionStartDate':
          result.exhibitionStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'exhibitionEndDate':
          result.exhibitionEndDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'exhibitionDescription':
          result.exhibitionDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exhibitionLeader':
          result.exhibitionLeader = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'exhibitionFeaturedPic':
          result.exhibitionFeaturedPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exhibitName':
          result.exhibitName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exhibitSubline':
          result.exhibitSubline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exhibitionTeam':
          result.exhibitionTeam = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'exhibitLocation':
          result.exhibitLocation = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'exhibitionArtist':
          result.exhibitionArtist = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdTime':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CollectionsRecord extends CollectionsRecord {
  @override
  final DateTime? exhibitionStartDate;
  @override
  final DateTime? exhibitionEndDate;
  @override
  final String? exhibitionDescription;
  @override
  final DocumentReference<Object?>? exhibitionLeader;
  @override
  final String? exhibitionFeaturedPic;
  @override
  final String? exhibitName;
  @override
  final String? exhibitSubline;
  @override
  final DocumentReference<Object?>? exhibitionTeam;
  @override
  final DocumentReference<Object?>? exhibitLocation;
  @override
  final DocumentReference<Object?>? exhibitionArtist;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollectionsRecord(
          [void Function(CollectionsRecordBuilder)? updates]) =>
      (new CollectionsRecordBuilder()..update(updates))._build();

  _$CollectionsRecord._(
      {this.exhibitionStartDate,
      this.exhibitionEndDate,
      this.exhibitionDescription,
      this.exhibitionLeader,
      this.exhibitionFeaturedPic,
      this.exhibitName,
      this.exhibitSubline,
      this.exhibitionTeam,
      this.exhibitLocation,
      this.exhibitionArtist,
      this.createdTime,
      this.ffRef})
      : super._();

  @override
  CollectionsRecord rebuild(void Function(CollectionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionsRecordBuilder toBuilder() =>
      new CollectionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionsRecord &&
        exhibitionStartDate == other.exhibitionStartDate &&
        exhibitionEndDate == other.exhibitionEndDate &&
        exhibitionDescription == other.exhibitionDescription &&
        exhibitionLeader == other.exhibitionLeader &&
        exhibitionFeaturedPic == other.exhibitionFeaturedPic &&
        exhibitName == other.exhibitName &&
        exhibitSubline == other.exhibitSubline &&
        exhibitionTeam == other.exhibitionTeam &&
        exhibitLocation == other.exhibitLocation &&
        exhibitionArtist == other.exhibitionArtist &&
        createdTime == other.createdTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    0,
                                                    exhibitionStartDate
                                                        .hashCode),
                                                exhibitionEndDate.hashCode),
                                            exhibitionDescription.hashCode),
                                        exhibitionLeader.hashCode),
                                    exhibitionFeaturedPic.hashCode),
                                exhibitName.hashCode),
                            exhibitSubline.hashCode),
                        exhibitionTeam.hashCode),
                    exhibitLocation.hashCode),
                exhibitionArtist.hashCode),
            createdTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionsRecord')
          ..add('exhibitionStartDate', exhibitionStartDate)
          ..add('exhibitionEndDate', exhibitionEndDate)
          ..add('exhibitionDescription', exhibitionDescription)
          ..add('exhibitionLeader', exhibitionLeader)
          ..add('exhibitionFeaturedPic', exhibitionFeaturedPic)
          ..add('exhibitName', exhibitName)
          ..add('exhibitSubline', exhibitSubline)
          ..add('exhibitionTeam', exhibitionTeam)
          ..add('exhibitLocation', exhibitLocation)
          ..add('exhibitionArtist', exhibitionArtist)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollectionsRecordBuilder
    implements Builder<CollectionsRecord, CollectionsRecordBuilder> {
  _$CollectionsRecord? _$v;

  DateTime? _exhibitionStartDate;
  DateTime? get exhibitionStartDate => _$this._exhibitionStartDate;
  set exhibitionStartDate(DateTime? exhibitionStartDate) =>
      _$this._exhibitionStartDate = exhibitionStartDate;

  DateTime? _exhibitionEndDate;
  DateTime? get exhibitionEndDate => _$this._exhibitionEndDate;
  set exhibitionEndDate(DateTime? exhibitionEndDate) =>
      _$this._exhibitionEndDate = exhibitionEndDate;

  String? _exhibitionDescription;
  String? get exhibitionDescription => _$this._exhibitionDescription;
  set exhibitionDescription(String? exhibitionDescription) =>
      _$this._exhibitionDescription = exhibitionDescription;

  DocumentReference<Object?>? _exhibitionLeader;
  DocumentReference<Object?>? get exhibitionLeader => _$this._exhibitionLeader;
  set exhibitionLeader(DocumentReference<Object?>? exhibitionLeader) =>
      _$this._exhibitionLeader = exhibitionLeader;

  String? _exhibitionFeaturedPic;
  String? get exhibitionFeaturedPic => _$this._exhibitionFeaturedPic;
  set exhibitionFeaturedPic(String? exhibitionFeaturedPic) =>
      _$this._exhibitionFeaturedPic = exhibitionFeaturedPic;

  String? _exhibitName;
  String? get exhibitName => _$this._exhibitName;
  set exhibitName(String? exhibitName) => _$this._exhibitName = exhibitName;

  String? _exhibitSubline;
  String? get exhibitSubline => _$this._exhibitSubline;
  set exhibitSubline(String? exhibitSubline) =>
      _$this._exhibitSubline = exhibitSubline;

  DocumentReference<Object?>? _exhibitionTeam;
  DocumentReference<Object?>? get exhibitionTeam => _$this._exhibitionTeam;
  set exhibitionTeam(DocumentReference<Object?>? exhibitionTeam) =>
      _$this._exhibitionTeam = exhibitionTeam;

  DocumentReference<Object?>? _exhibitLocation;
  DocumentReference<Object?>? get exhibitLocation => _$this._exhibitLocation;
  set exhibitLocation(DocumentReference<Object?>? exhibitLocation) =>
      _$this._exhibitLocation = exhibitLocation;

  DocumentReference<Object?>? _exhibitionArtist;
  DocumentReference<Object?>? get exhibitionArtist => _$this._exhibitionArtist;
  set exhibitionArtist(DocumentReference<Object?>? exhibitionArtist) =>
      _$this._exhibitionArtist = exhibitionArtist;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollectionsRecordBuilder() {
    CollectionsRecord._initializeBuilder(this);
  }

  CollectionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exhibitionStartDate = $v.exhibitionStartDate;
      _exhibitionEndDate = $v.exhibitionEndDate;
      _exhibitionDescription = $v.exhibitionDescription;
      _exhibitionLeader = $v.exhibitionLeader;
      _exhibitionFeaturedPic = $v.exhibitionFeaturedPic;
      _exhibitName = $v.exhibitName;
      _exhibitSubline = $v.exhibitSubline;
      _exhibitionTeam = $v.exhibitionTeam;
      _exhibitLocation = $v.exhibitLocation;
      _exhibitionArtist = $v.exhibitionArtist;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectionsRecord;
  }

  @override
  void update(void Function(CollectionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionsRecord build() => _build();

  _$CollectionsRecord _build() {
    final _$result = _$v ??
        new _$CollectionsRecord._(
            exhibitionStartDate: exhibitionStartDate,
            exhibitionEndDate: exhibitionEndDate,
            exhibitionDescription: exhibitionDescription,
            exhibitionLeader: exhibitionLeader,
            exhibitionFeaturedPic: exhibitionFeaturedPic,
            exhibitName: exhibitName,
            exhibitSubline: exhibitSubline,
            exhibitionTeam: exhibitionTeam,
            exhibitLocation: exhibitLocation,
            exhibitionArtist: exhibitionArtist,
            createdTime: createdTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
