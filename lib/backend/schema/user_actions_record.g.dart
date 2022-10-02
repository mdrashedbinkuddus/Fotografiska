// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_actions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserActionsRecord> _$userActionsRecordSerializer =
    new _$UserActionsRecordSerializer();

class _$UserActionsRecordSerializer
    implements StructuredSerializer<UserActionsRecord> {
  @override
  final Iterable<Type> types = const [UserActionsRecord, _$UserActionsRecord];
  @override
  final String wireName = 'UserActionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserActionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeOfAction;
    if (value != null) {
      result
        ..add('typeOfAction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('UserRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('Username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.assetName;
    if (value != null) {
      result
        ..add('assetName')
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
  UserActionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserActionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'typeOfAction':
          result.typeOfAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UserRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'assetName':
          result.assetName = serializers.deserialize(value,
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

class _$UserActionsRecord extends UserActionsRecord {
  @override
  final String? typeOfAction;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? username;
  @override
  final DateTime? date;
  @override
  final String? assetName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserActionsRecord(
          [void Function(UserActionsRecordBuilder)? updates]) =>
      (new UserActionsRecordBuilder()..update(updates))._build();

  _$UserActionsRecord._(
      {this.typeOfAction,
      this.userRef,
      this.username,
      this.date,
      this.assetName,
      this.ffRef})
      : super._();

  @override
  UserActionsRecord rebuild(void Function(UserActionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserActionsRecordBuilder toBuilder() =>
      new UserActionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserActionsRecord &&
        typeOfAction == other.typeOfAction &&
        userRef == other.userRef &&
        username == other.username &&
        date == other.date &&
        assetName == other.assetName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, typeOfAction.hashCode), userRef.hashCode),
                    username.hashCode),
                date.hashCode),
            assetName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserActionsRecord')
          ..add('typeOfAction', typeOfAction)
          ..add('userRef', userRef)
          ..add('username', username)
          ..add('date', date)
          ..add('assetName', assetName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserActionsRecordBuilder
    implements Builder<UserActionsRecord, UserActionsRecordBuilder> {
  _$UserActionsRecord? _$v;

  String? _typeOfAction;
  String? get typeOfAction => _$this._typeOfAction;
  set typeOfAction(String? typeOfAction) => _$this._typeOfAction = typeOfAction;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _assetName;
  String? get assetName => _$this._assetName;
  set assetName(String? assetName) => _$this._assetName = assetName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserActionsRecordBuilder() {
    UserActionsRecord._initializeBuilder(this);
  }

  UserActionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeOfAction = $v.typeOfAction;
      _userRef = $v.userRef;
      _username = $v.username;
      _date = $v.date;
      _assetName = $v.assetName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserActionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserActionsRecord;
  }

  @override
  void update(void Function(UserActionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserActionsRecord build() => _build();

  _$UserActionsRecord _build() {
    final _$result = _$v ??
        new _$UserActionsRecord._(
            typeOfAction: typeOfAction,
            userRef: userRef,
            username: username,
            date: date,
            assetName: assetName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
