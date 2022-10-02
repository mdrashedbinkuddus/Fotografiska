// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_notes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetNotesRecord> _$assetNotesRecordSerializer =
    new _$AssetNotesRecordSerializer();

class _$AssetNotesRecordSerializer
    implements StructuredSerializer<AssetNotesRecord> {
  @override
  final Iterable<Type> types = const [AssetNotesRecord, _$AssetNotesRecord];
  @override
  final String wireName = 'AssetNotesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AssetNotesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userCreated;
    if (value != null) {
      result
        ..add('userCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('Note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetRef;
    if (value != null) {
      result
        ..add('assetRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('timeCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('UserName')
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
  AssetNotesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetNotesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userCreated':
          result.userCreated = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'assetRef':
          result.assetRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'timeCreated':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'UserName':
          result.userName = serializers.deserialize(value,
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

class _$AssetNotesRecord extends AssetNotesRecord {
  @override
  final DocumentReference<Object?>? userCreated;
  @override
  final String? note;
  @override
  final DocumentReference<Object?>? assetRef;
  @override
  final DateTime? timeCreated;
  @override
  final String? userName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AssetNotesRecord(
          [void Function(AssetNotesRecordBuilder)? updates]) =>
      (new AssetNotesRecordBuilder()..update(updates))._build();

  _$AssetNotesRecord._(
      {this.userCreated,
      this.note,
      this.assetRef,
      this.timeCreated,
      this.userName,
      this.ffRef})
      : super._();

  @override
  AssetNotesRecord rebuild(void Function(AssetNotesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetNotesRecordBuilder toBuilder() =>
      new AssetNotesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetNotesRecord &&
        userCreated == other.userCreated &&
        note == other.note &&
        assetRef == other.assetRef &&
        timeCreated == other.timeCreated &&
        userName == other.userName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userCreated.hashCode), note.hashCode),
                    assetRef.hashCode),
                timeCreated.hashCode),
            userName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetNotesRecord')
          ..add('userCreated', userCreated)
          ..add('note', note)
          ..add('assetRef', assetRef)
          ..add('timeCreated', timeCreated)
          ..add('userName', userName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AssetNotesRecordBuilder
    implements Builder<AssetNotesRecord, AssetNotesRecordBuilder> {
  _$AssetNotesRecord? _$v;

  DocumentReference<Object?>? _userCreated;
  DocumentReference<Object?>? get userCreated => _$this._userCreated;
  set userCreated(DocumentReference<Object?>? userCreated) =>
      _$this._userCreated = userCreated;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DocumentReference<Object?>? _assetRef;
  DocumentReference<Object?>? get assetRef => _$this._assetRef;
  set assetRef(DocumentReference<Object?>? assetRef) =>
      _$this._assetRef = assetRef;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AssetNotesRecordBuilder() {
    AssetNotesRecord._initializeBuilder(this);
  }

  AssetNotesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userCreated = $v.userCreated;
      _note = $v.note;
      _assetRef = $v.assetRef;
      _timeCreated = $v.timeCreated;
      _userName = $v.userName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetNotesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetNotesRecord;
  }

  @override
  void update(void Function(AssetNotesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetNotesRecord build() => _build();

  _$AssetNotesRecord _build() {
    final _$result = _$v ??
        new _$AssetNotesRecord._(
            userCreated: userCreated,
            note: note,
            assetRef: assetRef,
            timeCreated: timeCreated,
            userName: userName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
