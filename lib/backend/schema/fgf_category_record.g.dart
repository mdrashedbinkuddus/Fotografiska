// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fgf_category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FgfCategoryRecord> _$fgfCategoryRecordSerializer =
    new _$FgfCategoryRecordSerializer();

class _$FgfCategoryRecordSerializer
    implements StructuredSerializer<FgfCategoryRecord> {
  @override
  final Iterable<Type> types = const [FgfCategoryRecord, _$FgfCategoryRecord];
  @override
  final String wireName = 'FgfCategoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FgfCategoryRecord object,
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
    value = object.catOwner;
    if (value != null) {
      result
        ..add('catOwner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.fgfCatalogList;
    if (value != null) {
      result
        ..add('fgfCatalogList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  FgfCategoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FgfCategoryRecordBuilder();

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
        case 'catOwner':
          result.catOwner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'fgfCatalogList':
          result.fgfCatalogList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$FgfCategoryRecord extends FgfCategoryRecord {
  @override
  final String? catTitle;
  @override
  final DocumentReference<Object?>? catOwner;
  @override
  final BuiltList<DocumentReference<Object?>>? fgfCatalogList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FgfCategoryRecord(
          [void Function(FgfCategoryRecordBuilder)? updates]) =>
      (new FgfCategoryRecordBuilder()..update(updates))._build();

  _$FgfCategoryRecord._(
      {this.catTitle, this.catOwner, this.fgfCatalogList, this.ffRef})
      : super._();

  @override
  FgfCategoryRecord rebuild(void Function(FgfCategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FgfCategoryRecordBuilder toBuilder() =>
      new FgfCategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FgfCategoryRecord &&
        catTitle == other.catTitle &&
        catOwner == other.catOwner &&
        fgfCatalogList == other.fgfCatalogList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, catTitle.hashCode), catOwner.hashCode),
            fgfCatalogList.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FgfCategoryRecord')
          ..add('catTitle', catTitle)
          ..add('catOwner', catOwner)
          ..add('fgfCatalogList', fgfCatalogList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FgfCategoryRecordBuilder
    implements Builder<FgfCategoryRecord, FgfCategoryRecordBuilder> {
  _$FgfCategoryRecord? _$v;

  String? _catTitle;
  String? get catTitle => _$this._catTitle;
  set catTitle(String? catTitle) => _$this._catTitle = catTitle;

  DocumentReference<Object?>? _catOwner;
  DocumentReference<Object?>? get catOwner => _$this._catOwner;
  set catOwner(DocumentReference<Object?>? catOwner) =>
      _$this._catOwner = catOwner;

  ListBuilder<DocumentReference<Object?>>? _fgfCatalogList;
  ListBuilder<DocumentReference<Object?>> get fgfCatalogList =>
      _$this._fgfCatalogList ??= new ListBuilder<DocumentReference<Object?>>();
  set fgfCatalogList(ListBuilder<DocumentReference<Object?>>? fgfCatalogList) =>
      _$this._fgfCatalogList = fgfCatalogList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FgfCategoryRecordBuilder() {
    FgfCategoryRecord._initializeBuilder(this);
  }

  FgfCategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _catTitle = $v.catTitle;
      _catOwner = $v.catOwner;
      _fgfCatalogList = $v.fgfCatalogList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FgfCategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FgfCategoryRecord;
  }

  @override
  void update(void Function(FgfCategoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FgfCategoryRecord build() => _build();

  _$FgfCategoryRecord _build() {
    _$FgfCategoryRecord _$result;
    try {
      _$result = _$v ??
          new _$FgfCategoryRecord._(
              catTitle: catTitle,
              catOwner: catOwner,
              fgfCatalogList: _fgfCatalogList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fgfCatalogList';
        _fgfCatalogList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FgfCategoryRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
