// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fotografiska_team_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FotografiskaTeamStruct> _$fotografiskaTeamStructSerializer =
    new _$FotografiskaTeamStructSerializer();

class _$FotografiskaTeamStructSerializer
    implements StructuredSerializer<FotografiskaTeamStruct> {
  @override
  final Iterable<Type> types = const [
    FotografiskaTeamStruct,
    _$FotografiskaTeamStruct
  ];
  @override
  final String wireName = 'FotografiskaTeamStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FotografiskaTeamStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.teamLocationCity;
    if (value != null) {
      result
        ..add('TeamLocationCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamMembers;
    if (value != null) {
      result
        ..add('TeamMembers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffIcon;
    if (value != null) {
      result
        ..add('ffIcon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FotografiskaTeamStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FotografiskaTeamStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TeamLocationCity':
          result.teamLocationCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TeamMembers':
          result.teamMembers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'ffIcon':
          result.ffIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FotografiskaTeamStruct extends FotografiskaTeamStruct {
  @override
  final String? teamLocationCity;
  @override
  final BuiltList<DocumentReference<Object?>>? teamMembers;
  @override
  final String? ffIcon;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FotografiskaTeamStruct(
          [void Function(FotografiskaTeamStructBuilder)? updates]) =>
      (new FotografiskaTeamStructBuilder()..update(updates))._build();

  _$FotografiskaTeamStruct._(
      {this.teamLocationCity,
      this.teamMembers,
      this.ffIcon,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FotografiskaTeamStruct', 'firestoreUtilData');
  }

  @override
  FotografiskaTeamStruct rebuild(
          void Function(FotografiskaTeamStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FotografiskaTeamStructBuilder toBuilder() =>
      new FotografiskaTeamStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FotografiskaTeamStruct &&
        teamLocationCity == other.teamLocationCity &&
        teamMembers == other.teamMembers &&
        ffIcon == other.ffIcon &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, teamLocationCity.hashCode), teamMembers.hashCode),
            ffIcon.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FotografiskaTeamStruct')
          ..add('teamLocationCity', teamLocationCity)
          ..add('teamMembers', teamMembers)
          ..add('ffIcon', ffIcon)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FotografiskaTeamStructBuilder
    implements Builder<FotografiskaTeamStruct, FotografiskaTeamStructBuilder> {
  _$FotografiskaTeamStruct? _$v;

  String? _teamLocationCity;
  String? get teamLocationCity => _$this._teamLocationCity;
  set teamLocationCity(String? teamLocationCity) =>
      _$this._teamLocationCity = teamLocationCity;

  ListBuilder<DocumentReference<Object?>>? _teamMembers;
  ListBuilder<DocumentReference<Object?>> get teamMembers =>
      _$this._teamMembers ??= new ListBuilder<DocumentReference<Object?>>();
  set teamMembers(ListBuilder<DocumentReference<Object?>>? teamMembers) =>
      _$this._teamMembers = teamMembers;

  String? _ffIcon;
  String? get ffIcon => _$this._ffIcon;
  set ffIcon(String? ffIcon) => _$this._ffIcon = ffIcon;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FotografiskaTeamStructBuilder() {
    FotografiskaTeamStruct._initializeBuilder(this);
  }

  FotografiskaTeamStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamLocationCity = $v.teamLocationCity;
      _teamMembers = $v.teamMembers?.toBuilder();
      _ffIcon = $v.ffIcon;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FotografiskaTeamStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FotografiskaTeamStruct;
  }

  @override
  void update(void Function(FotografiskaTeamStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FotografiskaTeamStruct build() => _build();

  _$FotografiskaTeamStruct _build() {
    _$FotografiskaTeamStruct _$result;
    try {
      _$result = _$v ??
          new _$FotografiskaTeamStruct._(
              teamLocationCity: teamLocationCity,
              teamMembers: _teamMembers?.build(),
              ffIcon: ffIcon,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'FotografiskaTeamStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'teamMembers';
        _teamMembers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FotografiskaTeamStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
