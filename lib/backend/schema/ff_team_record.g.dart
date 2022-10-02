// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ff_team_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FfTeamRecord> _$ffTeamRecordSerializer =
    new _$FfTeamRecordSerializer();

class _$FfTeamRecordSerializer implements StructuredSerializer<FfTeamRecord> {
  @override
  final Iterable<Type> types = const [FfTeamRecord, _$FfTeamRecord];
  @override
  final String wireName = 'FfTeamRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FfTeamRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.teamName;
    if (value != null) {
      result
        ..add('TeamName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamMember;
    if (value != null) {
      result
        ..add('teamMember')
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
  FfTeamRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FfTeamRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TeamName':
          result.teamName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamMember':
          result.teamMember.replace(serializers.deserialize(value,
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

class _$FfTeamRecord extends FfTeamRecord {
  @override
  final String? teamName;
  @override
  final BuiltList<DocumentReference<Object?>>? teamMember;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FfTeamRecord([void Function(FfTeamRecordBuilder)? updates]) =>
      (new FfTeamRecordBuilder()..update(updates))._build();

  _$FfTeamRecord._({this.teamName, this.teamMember, this.ffRef}) : super._();

  @override
  FfTeamRecord rebuild(void Function(FfTeamRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FfTeamRecordBuilder toBuilder() => new FfTeamRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FfTeamRecord &&
        teamName == other.teamName &&
        teamMember == other.teamMember &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, teamName.hashCode), teamMember.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FfTeamRecord')
          ..add('teamName', teamName)
          ..add('teamMember', teamMember)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FfTeamRecordBuilder
    implements Builder<FfTeamRecord, FfTeamRecordBuilder> {
  _$FfTeamRecord? _$v;

  String? _teamName;
  String? get teamName => _$this._teamName;
  set teamName(String? teamName) => _$this._teamName = teamName;

  ListBuilder<DocumentReference<Object?>>? _teamMember;
  ListBuilder<DocumentReference<Object?>> get teamMember =>
      _$this._teamMember ??= new ListBuilder<DocumentReference<Object?>>();
  set teamMember(ListBuilder<DocumentReference<Object?>>? teamMember) =>
      _$this._teamMember = teamMember;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FfTeamRecordBuilder() {
    FfTeamRecord._initializeBuilder(this);
  }

  FfTeamRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamName = $v.teamName;
      _teamMember = $v.teamMember?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FfTeamRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FfTeamRecord;
  }

  @override
  void update(void Function(FfTeamRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FfTeamRecord build() => _build();

  _$FfTeamRecord _build() {
    _$FfTeamRecord _$result;
    try {
      _$result = _$v ??
          new _$FfTeamRecord._(
              teamName: teamName,
              teamMember: _teamMember?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'teamMember';
        _teamMember?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FfTeamRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
