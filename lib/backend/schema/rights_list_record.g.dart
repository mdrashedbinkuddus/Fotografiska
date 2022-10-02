// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rights_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RightsListRecord> _$rightsListRecordSerializer =
    new _$RightsListRecordSerializer();

class _$RightsListRecordSerializer
    implements StructuredSerializer<RightsListRecord> {
  @override
  final Iterable<Type> types = const [RightsListRecord, _$RightsListRecord];
  @override
  final String wireName = 'RightsListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RightsListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rightsTitle;
    if (value != null) {
      result
        ..add('rightsTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rightsCreator;
    if (value != null) {
      result
        ..add('rightsCreator')
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
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rightsDueDate;
    if (value != null) {
      result
        ..add('rightsDueDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rightsHolder;
    if (value != null) {
      result
        ..add('rightsHolder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rigghtsTerritory;
    if (value != null) {
      result
        ..add('rigghtsTerritory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.rightsStartDate;
    if (value != null) {
      result
        ..add('rightsStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.refAssetList;
    if (value != null) {
      result
        ..add('refAssetList')
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
  RightsListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RightsListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rightsTitle':
          result.rightsTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rightsCreator':
          result.rightsCreator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'rightsDueDate':
          result.rightsDueDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'rightsHolder':
          result.rightsHolder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rigghtsTerritory':
          result.rigghtsTerritory.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'rightsStartDate':
          result.rightsStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'refAssetList':
          result.refAssetList.replace(serializers.deserialize(value,
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

class _$RightsListRecord extends RightsListRecord {
  @override
  final String? rightsTitle;
  @override
  final DocumentReference<Object?>? rightsCreator;
  @override
  final DateTime? createdOn;
  @override
  final bool? isActive;
  @override
  final DateTime? rightsDueDate;
  @override
  final String? rightsHolder;
  @override
  final BuiltList<DocumentReference<Object?>>? rigghtsTerritory;
  @override
  final DateTime? rightsStartDate;
  @override
  final BuiltList<DocumentReference<Object?>>? refAssetList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RightsListRecord(
          [void Function(RightsListRecordBuilder)? updates]) =>
      (new RightsListRecordBuilder()..update(updates))._build();

  _$RightsListRecord._(
      {this.rightsTitle,
      this.rightsCreator,
      this.createdOn,
      this.isActive,
      this.rightsDueDate,
      this.rightsHolder,
      this.rigghtsTerritory,
      this.rightsStartDate,
      this.refAssetList,
      this.ffRef})
      : super._();

  @override
  RightsListRecord rebuild(void Function(RightsListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RightsListRecordBuilder toBuilder() =>
      new RightsListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RightsListRecord &&
        rightsTitle == other.rightsTitle &&
        rightsCreator == other.rightsCreator &&
        createdOn == other.createdOn &&
        isActive == other.isActive &&
        rightsDueDate == other.rightsDueDate &&
        rightsHolder == other.rightsHolder &&
        rigghtsTerritory == other.rigghtsTerritory &&
        rightsStartDate == other.rightsStartDate &&
        refAssetList == other.refAssetList &&
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
                                    $jc($jc(0, rightsTitle.hashCode),
                                        rightsCreator.hashCode),
                                    createdOn.hashCode),
                                isActive.hashCode),
                            rightsDueDate.hashCode),
                        rightsHolder.hashCode),
                    rigghtsTerritory.hashCode),
                rightsStartDate.hashCode),
            refAssetList.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RightsListRecord')
          ..add('rightsTitle', rightsTitle)
          ..add('rightsCreator', rightsCreator)
          ..add('createdOn', createdOn)
          ..add('isActive', isActive)
          ..add('rightsDueDate', rightsDueDate)
          ..add('rightsHolder', rightsHolder)
          ..add('rigghtsTerritory', rigghtsTerritory)
          ..add('rightsStartDate', rightsStartDate)
          ..add('refAssetList', refAssetList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RightsListRecordBuilder
    implements Builder<RightsListRecord, RightsListRecordBuilder> {
  _$RightsListRecord? _$v;

  String? _rightsTitle;
  String? get rightsTitle => _$this._rightsTitle;
  set rightsTitle(String? rightsTitle) => _$this._rightsTitle = rightsTitle;

  DocumentReference<Object?>? _rightsCreator;
  DocumentReference<Object?>? get rightsCreator => _$this._rightsCreator;
  set rightsCreator(DocumentReference<Object?>? rightsCreator) =>
      _$this._rightsCreator = rightsCreator;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _rightsDueDate;
  DateTime? get rightsDueDate => _$this._rightsDueDate;
  set rightsDueDate(DateTime? rightsDueDate) =>
      _$this._rightsDueDate = rightsDueDate;

  String? _rightsHolder;
  String? get rightsHolder => _$this._rightsHolder;
  set rightsHolder(String? rightsHolder) => _$this._rightsHolder = rightsHolder;

  ListBuilder<DocumentReference<Object?>>? _rigghtsTerritory;
  ListBuilder<DocumentReference<Object?>> get rigghtsTerritory =>
      _$this._rigghtsTerritory ??=
          new ListBuilder<DocumentReference<Object?>>();
  set rigghtsTerritory(
          ListBuilder<DocumentReference<Object?>>? rigghtsTerritory) =>
      _$this._rigghtsTerritory = rigghtsTerritory;

  DateTime? _rightsStartDate;
  DateTime? get rightsStartDate => _$this._rightsStartDate;
  set rightsStartDate(DateTime? rightsStartDate) =>
      _$this._rightsStartDate = rightsStartDate;

  ListBuilder<DocumentReference<Object?>>? _refAssetList;
  ListBuilder<DocumentReference<Object?>> get refAssetList =>
      _$this._refAssetList ??= new ListBuilder<DocumentReference<Object?>>();
  set refAssetList(ListBuilder<DocumentReference<Object?>>? refAssetList) =>
      _$this._refAssetList = refAssetList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RightsListRecordBuilder() {
    RightsListRecord._initializeBuilder(this);
  }

  RightsListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rightsTitle = $v.rightsTitle;
      _rightsCreator = $v.rightsCreator;
      _createdOn = $v.createdOn;
      _isActive = $v.isActive;
      _rightsDueDate = $v.rightsDueDate;
      _rightsHolder = $v.rightsHolder;
      _rigghtsTerritory = $v.rigghtsTerritory?.toBuilder();
      _rightsStartDate = $v.rightsStartDate;
      _refAssetList = $v.refAssetList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RightsListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RightsListRecord;
  }

  @override
  void update(void Function(RightsListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RightsListRecord build() => _build();

  _$RightsListRecord _build() {
    _$RightsListRecord _$result;
    try {
      _$result = _$v ??
          new _$RightsListRecord._(
              rightsTitle: rightsTitle,
              rightsCreator: rightsCreator,
              createdOn: createdOn,
              isActive: isActive,
              rightsDueDate: rightsDueDate,
              rightsHolder: rightsHolder,
              rigghtsTerritory: _rigghtsTerritory?.build(),
              rightsStartDate: rightsStartDate,
              refAssetList: _refAssetList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rigghtsTerritory';
        _rigghtsTerritory?.build();

        _$failedField = 'refAssetList';
        _refAssetList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RightsListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
