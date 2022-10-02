// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'img_asset_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImgAssetRecord> _$imgAssetRecordSerializer =
    new _$ImgAssetRecordSerializer();

class _$ImgAssetRecordSerializer
    implements StructuredSerializer<ImgAssetRecord> {
  @override
  final Iterable<Type> types = const [ImgAssetRecord, _$ImgAssetRecord];
  @override
  final String wireName = 'ImgAssetRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImgAssetRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.assetName;
    if (value != null) {
      result
        ..add('AssetName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetImage;
    if (value != null) {
      result
        ..add('AssetImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetCreator;
    if (value != null) {
      result
        ..add('AssetCreator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.assetCreationTime;
    if (value != null) {
      result
        ..add('assetCreationTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.assetDescription;
    if (value != null) {
      result
        ..add('assetDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetTags;
    if (value != null) {
      result
        ..add('assetTags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetRight;
    if (value != null) {
      result
        ..add('assetRight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.assetArtist;
    if (value != null) {
      result
        ..add('assetArtist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.versionNr;
    if (value != null) {
      result
        ..add('VersionNr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.assetColRef;
    if (value != null) {
      result
        ..add('assetColRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.assetNewName;
    if (value != null) {
      result
        ..add('assetNewName')
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
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
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
  ImgAssetRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImgAssetRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'AssetName':
          result.assetName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AssetImage':
          result.assetImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AssetCreator':
          result.assetCreator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'assetCreationTime':
          result.assetCreationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'assetDescription':
          result.assetDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assetTags':
          result.assetTags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assetRight':
          result.assetRight = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'assetArtist':
          result.assetArtist = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'VersionNr':
          result.versionNr = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'assetColRef':
          result.assetColRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'dwldAllowed':
          result.dwldAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sharingAllowed':
          result.sharingAllowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'assetNewName':
          result.assetNewName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Catalog':
          result.catalog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
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

class _$ImgAssetRecord extends ImgAssetRecord {
  @override
  final String? assetName;
  @override
  final String? assetImage;
  @override
  final DocumentReference<Object?>? assetCreator;
  @override
  final DateTime? assetCreationTime;
  @override
  final String? assetDescription;
  @override
  final String? assetTags;
  @override
  final DocumentReference<Object?>? assetRight;
  @override
  final DocumentReference<Object?>? assetArtist;
  @override
  final double? versionNr;
  @override
  final DocumentReference<Object?>? assetColRef;
  @override
  final bool? dwldAllowed;
  @override
  final bool? sharingAllowed;
  @override
  final String? assetNewName;
  @override
  final String? catalog;
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImgAssetRecord([void Function(ImgAssetRecordBuilder)? updates]) =>
      (new ImgAssetRecordBuilder()..update(updates))._build();

  _$ImgAssetRecord._(
      {this.assetName,
      this.assetImage,
      this.assetCreator,
      this.assetCreationTime,
      this.assetDescription,
      this.assetTags,
      this.assetRight,
      this.assetArtist,
      this.versionNr,
      this.assetColRef,
      this.dwldAllowed,
      this.sharingAllowed,
      this.assetNewName,
      this.catalog,
      this.category,
      this.ffRef})
      : super._();

  @override
  ImgAssetRecord rebuild(void Function(ImgAssetRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImgAssetRecordBuilder toBuilder() =>
      new ImgAssetRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImgAssetRecord &&
        assetName == other.assetName &&
        assetImage == other.assetImage &&
        assetCreator == other.assetCreator &&
        assetCreationTime == other.assetCreationTime &&
        assetDescription == other.assetDescription &&
        assetTags == other.assetTags &&
        assetRight == other.assetRight &&
        assetArtist == other.assetArtist &&
        versionNr == other.versionNr &&
        assetColRef == other.assetColRef &&
        dwldAllowed == other.dwldAllowed &&
        sharingAllowed == other.sharingAllowed &&
        assetNewName == other.assetNewName &&
        catalog == other.catalog &&
        category == other.category &&
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
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    assetName
                                                                        .hashCode),
                                                                assetImage
                                                                    .hashCode),
                                                            assetCreator
                                                                .hashCode),
                                                        assetCreationTime
                                                            .hashCode),
                                                    assetDescription.hashCode),
                                                assetTags.hashCode),
                                            assetRight.hashCode),
                                        assetArtist.hashCode),
                                    versionNr.hashCode),
                                assetColRef.hashCode),
                            dwldAllowed.hashCode),
                        sharingAllowed.hashCode),
                    assetNewName.hashCode),
                catalog.hashCode),
            category.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImgAssetRecord')
          ..add('assetName', assetName)
          ..add('assetImage', assetImage)
          ..add('assetCreator', assetCreator)
          ..add('assetCreationTime', assetCreationTime)
          ..add('assetDescription', assetDescription)
          ..add('assetTags', assetTags)
          ..add('assetRight', assetRight)
          ..add('assetArtist', assetArtist)
          ..add('versionNr', versionNr)
          ..add('assetColRef', assetColRef)
          ..add('dwldAllowed', dwldAllowed)
          ..add('sharingAllowed', sharingAllowed)
          ..add('assetNewName', assetNewName)
          ..add('catalog', catalog)
          ..add('category', category)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImgAssetRecordBuilder
    implements Builder<ImgAssetRecord, ImgAssetRecordBuilder> {
  _$ImgAssetRecord? _$v;

  String? _assetName;
  String? get assetName => _$this._assetName;
  set assetName(String? assetName) => _$this._assetName = assetName;

  String? _assetImage;
  String? get assetImage => _$this._assetImage;
  set assetImage(String? assetImage) => _$this._assetImage = assetImage;

  DocumentReference<Object?>? _assetCreator;
  DocumentReference<Object?>? get assetCreator => _$this._assetCreator;
  set assetCreator(DocumentReference<Object?>? assetCreator) =>
      _$this._assetCreator = assetCreator;

  DateTime? _assetCreationTime;
  DateTime? get assetCreationTime => _$this._assetCreationTime;
  set assetCreationTime(DateTime? assetCreationTime) =>
      _$this._assetCreationTime = assetCreationTime;

  String? _assetDescription;
  String? get assetDescription => _$this._assetDescription;
  set assetDescription(String? assetDescription) =>
      _$this._assetDescription = assetDescription;

  String? _assetTags;
  String? get assetTags => _$this._assetTags;
  set assetTags(String? assetTags) => _$this._assetTags = assetTags;

  DocumentReference<Object?>? _assetRight;
  DocumentReference<Object?>? get assetRight => _$this._assetRight;
  set assetRight(DocumentReference<Object?>? assetRight) =>
      _$this._assetRight = assetRight;

  DocumentReference<Object?>? _assetArtist;
  DocumentReference<Object?>? get assetArtist => _$this._assetArtist;
  set assetArtist(DocumentReference<Object?>? assetArtist) =>
      _$this._assetArtist = assetArtist;

  double? _versionNr;
  double? get versionNr => _$this._versionNr;
  set versionNr(double? versionNr) => _$this._versionNr = versionNr;

  DocumentReference<Object?>? _assetColRef;
  DocumentReference<Object?>? get assetColRef => _$this._assetColRef;
  set assetColRef(DocumentReference<Object?>? assetColRef) =>
      _$this._assetColRef = assetColRef;

  bool? _dwldAllowed;
  bool? get dwldAllowed => _$this._dwldAllowed;
  set dwldAllowed(bool? dwldAllowed) => _$this._dwldAllowed = dwldAllowed;

  bool? _sharingAllowed;
  bool? get sharingAllowed => _$this._sharingAllowed;
  set sharingAllowed(bool? sharingAllowed) =>
      _$this._sharingAllowed = sharingAllowed;

  String? _assetNewName;
  String? get assetNewName => _$this._assetNewName;
  set assetNewName(String? assetNewName) => _$this._assetNewName = assetNewName;

  String? _catalog;
  String? get catalog => _$this._catalog;
  set catalog(String? catalog) => _$this._catalog = catalog;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImgAssetRecordBuilder() {
    ImgAssetRecord._initializeBuilder(this);
  }

  ImgAssetRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetName = $v.assetName;
      _assetImage = $v.assetImage;
      _assetCreator = $v.assetCreator;
      _assetCreationTime = $v.assetCreationTime;
      _assetDescription = $v.assetDescription;
      _assetTags = $v.assetTags;
      _assetRight = $v.assetRight;
      _assetArtist = $v.assetArtist;
      _versionNr = $v.versionNr;
      _assetColRef = $v.assetColRef;
      _dwldAllowed = $v.dwldAllowed;
      _sharingAllowed = $v.sharingAllowed;
      _assetNewName = $v.assetNewName;
      _catalog = $v.catalog;
      _category = $v.category;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImgAssetRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImgAssetRecord;
  }

  @override
  void update(void Function(ImgAssetRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImgAssetRecord build() => _build();

  _$ImgAssetRecord _build() {
    final _$result = _$v ??
        new _$ImgAssetRecord._(
            assetName: assetName,
            assetImage: assetImage,
            assetCreator: assetCreator,
            assetCreationTime: assetCreationTime,
            assetDescription: assetDescription,
            assetTags: assetTags,
            assetRight: assetRight,
            assetArtist: assetArtist,
            versionNr: versionNr,
            assetColRef: assetColRef,
            dwldAllowed: dwldAllowed,
            sharingAllowed: sharingAllowed,
            assetNewName: assetNewName,
            catalog: catalog,
            category: category,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
