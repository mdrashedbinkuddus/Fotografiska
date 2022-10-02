// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fgf_catalog_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FgfCatalogRecord> _$fgfCatalogRecordSerializer =
    new _$FgfCatalogRecordSerializer();

class _$FgfCatalogRecordSerializer
    implements StructuredSerializer<FgfCatalogRecord> {
  @override
  final Iterable<Type> types = const [FgfCatalogRecord, _$FgfCatalogRecord];
  @override
  final String wireName = 'FgfCatalogRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FgfCatalogRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.catTitle;
    if (value != null) {
      result
        ..add('catTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.assetCollections;
    if (value != null) {
      result
        ..add('assetCollections')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.imgHeader;
    if (value != null) {
      result
        ..add('imgHeader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortInt;
    if (value != null) {
      result
        ..add('sortInt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  FgfCatalogRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FgfCatalogRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'catTitle':
          result.catTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'assetCollections':
          result.assetCollections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'imgHeader':
          result.imgHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortInt':
          result.sortInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$FgfCatalogRecord extends FgfCatalogRecord {
  @override
  final String? catTitle;
  @override
  final BuiltList<String>? categories;
  @override
  final BuiltList<String>? assetCollections;
  @override
  final String? imgHeader;
  @override
  final int? sortInt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FgfCatalogRecord(
          [void Function(FgfCatalogRecordBuilder)? updates]) =>
      (new FgfCatalogRecordBuilder()..update(updates))._build();

  _$FgfCatalogRecord._(
      {this.catTitle,
      this.categories,
      this.assetCollections,
      this.imgHeader,
      this.sortInt,
      this.ffRef})
      : super._();

  @override
  FgfCatalogRecord rebuild(void Function(FgfCatalogRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FgfCatalogRecordBuilder toBuilder() =>
      new FgfCatalogRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FgfCatalogRecord &&
        catTitle == other.catTitle &&
        categories == other.categories &&
        assetCollections == other.assetCollections &&
        imgHeader == other.imgHeader &&
        sortInt == other.sortInt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, catTitle.hashCode), categories.hashCode),
                    assetCollections.hashCode),
                imgHeader.hashCode),
            sortInt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FgfCatalogRecord')
          ..add('catTitle', catTitle)
          ..add('categories', categories)
          ..add('assetCollections', assetCollections)
          ..add('imgHeader', imgHeader)
          ..add('sortInt', sortInt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FgfCatalogRecordBuilder
    implements Builder<FgfCatalogRecord, FgfCatalogRecordBuilder> {
  _$FgfCatalogRecord? _$v;

  String? _catTitle;
  String? get catTitle => _$this._catTitle;
  set catTitle(String? catTitle) => _$this._catTitle = catTitle;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= new ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  ListBuilder<String>? _assetCollections;
  ListBuilder<String> get assetCollections =>
      _$this._assetCollections ??= new ListBuilder<String>();
  set assetCollections(ListBuilder<String>? assetCollections) =>
      _$this._assetCollections = assetCollections;

  String? _imgHeader;
  String? get imgHeader => _$this._imgHeader;
  set imgHeader(String? imgHeader) => _$this._imgHeader = imgHeader;

  int? _sortInt;
  int? get sortInt => _$this._sortInt;
  set sortInt(int? sortInt) => _$this._sortInt = sortInt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FgfCatalogRecordBuilder() {
    FgfCatalogRecord._initializeBuilder(this);
  }

  FgfCatalogRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _catTitle = $v.catTitle;
      _categories = $v.categories?.toBuilder();
      _assetCollections = $v.assetCollections?.toBuilder();
      _imgHeader = $v.imgHeader;
      _sortInt = $v.sortInt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FgfCatalogRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FgfCatalogRecord;
  }

  @override
  void update(void Function(FgfCatalogRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FgfCatalogRecord build() => _build();

  _$FgfCatalogRecord _build() {
    _$FgfCatalogRecord _$result;
    try {
      _$result = _$v ??
          new _$FgfCatalogRecord._(
              catTitle: catTitle,
              categories: _categories?.build(),
              assetCollections: _assetCollections?.build(),
              imgHeader: imgHeader,
              sortInt: sortInt,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'assetCollections';
        _assetCollections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FgfCatalogRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
