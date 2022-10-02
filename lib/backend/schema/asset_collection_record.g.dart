// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetCollectionRecord> _$assetCollectionRecordSerializer =
    new _$AssetCollectionRecordSerializer();

class _$AssetCollectionRecordSerializer
    implements StructuredSerializer<AssetCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    AssetCollectionRecord,
    _$AssetCollectionRecord
  ];
  @override
  final String wireName = 'AssetCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AssetCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.assetRefList;
    if (value != null) {
      result
        ..add('assetRefList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.assetCollectionName;
    if (value != null) {
      result
        ..add('assetCollectionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creatorsRef;
    if (value != null) {
      result
        ..add('creatorsRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.exhibitionRef;
    if (value != null) {
      result
        ..add('exhibitionRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.actualImage;
    if (value != null) {
      result
        ..add('actualImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rightRef;
    if (value != null) {
      result
        ..add('rightRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.assetArtists;
    if (value != null) {
      result
        ..add('assetArtists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdOn;
    if (value != null) {
      result
        ..add('createdOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.latestVersionNr;
    if (value != null) {
      result
        ..add('latestVersionNr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dwldAllowed;
    if (value != null) {
      result
        ..add('dwldAllowed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sharingAllowed;
    if (value != null) {
      result
        ..add('sharingAllowed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catalog;
    if (value != null) {
      result
        ..add('Catalog')
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
  AssetCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'assetRefList':
          result.assetRefList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'assetCollectionName':
          result.assetCollectionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creatorsRef':
          result.creatorsRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'exhibitionRef':
          result.exhibitionRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'actualImage':
          result.actualImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rightRef':
          result.rightRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'assetArtists':
          result.assetArtists = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'latestVersionNr':
          result.latestVersionNr = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dwldAllowed':
          result.dwldAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sharingAllowed':
          result.sharingAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Catalog':
          result.catalog = serializers.deserialize(value,
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

class _$AssetCollectionRecord extends AssetCollectionRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? assetRefList;
  @override
  final String? assetCollectionName;
  @override
  final BuiltList<DocumentReference<Object?>>? creatorsRef;
  @override
  final DocumentReference<Object?>? exhibitionRef;
  @override
  final String? actualImage;
  @override
  final DocumentReference<Object?>? rightRef;
  @override
  final DocumentReference<Object?>? assetArtists;
  @override
  final DateTime? createdOn;
  @override
  final double? latestVersionNr;
  @override
  final bool? dwldAllowed;
  @override
  final bool? sharingAllowed;
  @override
  final String? category;
  @override
  final String? catalog;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AssetCollectionRecord(
          [void Function(AssetCollectionRecordBuilder)? updates]) =>
      (new AssetCollectionRecordBuilder()..update(updates))._build();

  _$AssetCollectionRecord._(
      {this.assetRefList,
      this.assetCollectionName,
      this.creatorsRef,
      this.exhibitionRef,
      this.actualImage,
      this.rightRef,
      this.assetArtists,
      this.createdOn,
      this.latestVersionNr,
      this.dwldAllowed,
      this.sharingAllowed,
      this.category,
      this.catalog,
      this.ffRef})
      : super._();

  @override
  AssetCollectionRecord rebuild(
          void Function(AssetCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetCollectionRecordBuilder toBuilder() =>
      new AssetCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetCollectionRecord &&
        assetRefList == other.assetRefList &&
        assetCollectionName == other.assetCollectionName &&
        creatorsRef == other.creatorsRef &&
        exhibitionRef == other.exhibitionRef &&
        actualImage == other.actualImage &&
        rightRef == other.rightRef &&
        assetArtists == other.assetArtists &&
        createdOn == other.createdOn &&
        latestVersionNr == other.latestVersionNr &&
        dwldAllowed == other.dwldAllowed &&
        sharingAllowed == other.sharingAllowed &&
        category == other.category &&
        catalog == other.catalog &&
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
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            assetRefList
                                                                .hashCode),
                                                        assetCollectionName
                                                            .hashCode),
                                                    creatorsRef.hashCode),
                                                exhibitionRef.hashCode),
                                            actualImage.hashCode),
                                        rightRef.hashCode),
                                    assetArtists.hashCode),
                                createdOn.hashCode),
                            latestVersionNr.hashCode),
                        dwldAllowed.hashCode),
                    sharingAllowed.hashCode),
                category.hashCode),
            catalog.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetCollectionRecord')
          ..add('assetRefList', assetRefList)
          ..add('assetCollectionName', assetCollectionName)
          ..add('creatorsRef', creatorsRef)
          ..add('exhibitionRef', exhibitionRef)
          ..add('actualImage', actualImage)
          ..add('rightRef', rightRef)
          ..add('assetArtists', assetArtists)
          ..add('createdOn', createdOn)
          ..add('latestVersionNr', latestVersionNr)
          ..add('dwldAllowed', dwldAllowed)
          ..add('sharingAllowed', sharingAllowed)
          ..add('category', category)
          ..add('catalog', catalog)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AssetCollectionRecordBuilder
    implements Builder<AssetCollectionRecord, AssetCollectionRecordBuilder> {
  _$AssetCollectionRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _assetRefList;
  ListBuilder<DocumentReference<Object?>> get assetRefList =>
      _$this._assetRefList ??= new ListBuilder<DocumentReference<Object?>>();
  set assetRefList(ListBuilder<DocumentReference<Object?>>? assetRefList) =>
      _$this._assetRefList = assetRefList;

  String? _assetCollectionName;
  String? get assetCollectionName => _$this._assetCollectionName;
  set assetCollectionName(String? assetCollectionName) =>
      _$this._assetCollectionName = assetCollectionName;

  ListBuilder<DocumentReference<Object?>>? _creatorsRef;
  ListBuilder<DocumentReference<Object?>> get creatorsRef =>
      _$this._creatorsRef ??= new ListBuilder<DocumentReference<Object?>>();
  set creatorsRef(ListBuilder<DocumentReference<Object?>>? creatorsRef) =>
      _$this._creatorsRef = creatorsRef;

  DocumentReference<Object?>? _exhibitionRef;
  DocumentReference<Object?>? get exhibitionRef => _$this._exhibitionRef;
  set exhibitionRef(DocumentReference<Object?>? exhibitionRef) =>
      _$this._exhibitionRef = exhibitionRef;

  String? _actualImage;
  String? get actualImage => _$this._actualImage;
  set actualImage(String? actualImage) => _$this._actualImage = actualImage;

  DocumentReference<Object?>? _rightRef;
  DocumentReference<Object?>? get rightRef => _$this._rightRef;
  set rightRef(DocumentReference<Object?>? rightRef) =>
      _$this._rightRef = rightRef;

  DocumentReference<Object?>? _assetArtists;
  DocumentReference<Object?>? get assetArtists => _$this._assetArtists;
  set assetArtists(DocumentReference<Object?>? assetArtists) =>
      _$this._assetArtists = assetArtists;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  double? _latestVersionNr;
  double? get latestVersionNr => _$this._latestVersionNr;
  set latestVersionNr(double? latestVersionNr) =>
      _$this._latestVersionNr = latestVersionNr;

  bool? _dwldAllowed;
  bool? get dwldAllowed => _$this._dwldAllowed;
  set dwldAllowed(bool? dwldAllowed) => _$this._dwldAllowed = dwldAllowed;

  bool? _sharingAllowed;
  bool? get sharingAllowed => _$this._sharingAllowed;
  set sharingAllowed(bool? sharingAllowed) =>
      _$this._sharingAllowed = sharingAllowed;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _catalog;
  String? get catalog => _$this._catalog;
  set catalog(String? catalog) => _$this._catalog = catalog;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AssetCollectionRecordBuilder() {
    AssetCollectionRecord._initializeBuilder(this);
  }

  AssetCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetRefList = $v.assetRefList?.toBuilder();
      _assetCollectionName = $v.assetCollectionName;
      _creatorsRef = $v.creatorsRef?.toBuilder();
      _exhibitionRef = $v.exhibitionRef;
      _actualImage = $v.actualImage;
      _rightRef = $v.rightRef;
      _assetArtists = $v.assetArtists;
      _createdOn = $v.createdOn;
      _latestVersionNr = $v.latestVersionNr;
      _dwldAllowed = $v.dwldAllowed;
      _sharingAllowed = $v.sharingAllowed;
      _category = $v.category;
      _catalog = $v.catalog;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetCollectionRecord;
  }

  @override
  void update(void Function(AssetCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetCollectionRecord build() => _build();

  _$AssetCollectionRecord _build() {
    _$AssetCollectionRecord _$result;
    try {
      _$result = _$v ??
          new _$AssetCollectionRecord._(
              assetRefList: _assetRefList?.build(),
              assetCollectionName: assetCollectionName,
              creatorsRef: _creatorsRef?.build(),
              exhibitionRef: exhibitionRef,
              actualImage: actualImage,
              rightRef: rightRef,
              assetArtists: assetArtists,
              createdOn: createdOn,
              latestVersionNr: latestVersionNr,
              dwldAllowed: dwldAllowed,
              sharingAllowed: sharingAllowed,
              category: category,
              catalog: catalog,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assetRefList';
        _assetRefList?.build();

        _$failedField = 'creatorsRef';
        _creatorsRef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssetCollectionRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
