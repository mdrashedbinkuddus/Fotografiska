import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_actions_record.g.dart';

abstract class UserActionsRecord
    implements Built<UserActionsRecord, UserActionsRecordBuilder> {
  static Serializer<UserActionsRecord> get serializer =>
      _$userActionsRecordSerializer;

  String? get typeOfAction;

  @BuiltValueField(wireName: 'UserRef')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'Username')
  String? get username;

  DateTime? get date;

  String? get assetName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserActionsRecordBuilder builder) => builder
    ..typeOfAction = ''
    ..username = ''
    ..assetName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userActions');

  static Stream<UserActionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserActionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserActionsRecord._();
  factory UserActionsRecord([void Function(UserActionsRecordBuilder) updates]) =
      _$UserActionsRecord;

  static UserActionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserActionsRecordData({
  String? typeOfAction,
  DocumentReference? userRef,
  String? username,
  DateTime? date,
  String? assetName,
}) {
  final firestoreData = serializers.toFirestore(
    UserActionsRecord.serializer,
    UserActionsRecord(
      (u) => u
        ..typeOfAction = typeOfAction
        ..userRef = userRef
        ..username = username
        ..date = date
        ..assetName = assetName,
    ),
  );

  return firestoreData;
}
