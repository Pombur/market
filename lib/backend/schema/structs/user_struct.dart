// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? userName1,
    String? userImageUrl,
    int? userPhone,
    String? userImagePatch,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userName1 = userName1,
        _userImageUrl = userImageUrl,
        _userPhone = userPhone,
        _userImagePatch = userImagePatch,
        super(firestoreUtilData);

  // "user_name1" field.
  String? _userName1;
  String get userName1 => _userName1 ?? '';
  set userName1(String? val) => _userName1 = val;
  bool hasUserName1() => _userName1 != null;

  // "user_imageUrl" field.
  String? _userImageUrl;
  String get userImageUrl => _userImageUrl ?? '';
  set userImageUrl(String? val) => _userImageUrl = val;
  bool hasUserImageUrl() => _userImageUrl != null;

  // "user_phone" field.
  int? _userPhone;
  int get userPhone => _userPhone ?? 0;
  set userPhone(int? val) => _userPhone = val;
  void incrementUserPhone(int amount) => _userPhone = userPhone + amount;
  bool hasUserPhone() => _userPhone != null;

  // "user_imagePatch" field.
  String? _userImagePatch;
  String get userImagePatch => _userImagePatch ?? '';
  set userImagePatch(String? val) => _userImagePatch = val;
  bool hasUserImagePatch() => _userImagePatch != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userName1: data['user_name1'] as String?,
        userImageUrl: data['user_imageUrl'] as String?,
        userPhone: castToType<int>(data['user_phone']),
        userImagePatch: data['user_imagePatch'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_name1': _userName1,
        'user_imageUrl': _userImageUrl,
        'user_phone': _userPhone,
        'user_imagePatch': _userImagePatch,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_name1': serializeParam(
          _userName1,
          ParamType.String,
        ),
        'user_imageUrl': serializeParam(
          _userImageUrl,
          ParamType.String,
        ),
        'user_phone': serializeParam(
          _userPhone,
          ParamType.int,
        ),
        'user_imagePatch': serializeParam(
          _userImagePatch,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userName1: deserializeParam(
          data['user_name1'],
          ParamType.String,
          false,
        ),
        userImageUrl: deserializeParam(
          data['user_imageUrl'],
          ParamType.String,
          false,
        ),
        userPhone: deserializeParam(
          data['user_phone'],
          ParamType.int,
          false,
        ),
        userImagePatch: deserializeParam(
          data['user_imagePatch'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userName1 == other.userName1 &&
        userImageUrl == other.userImageUrl &&
        userPhone == other.userPhone &&
        userImagePatch == other.userImagePatch;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userName1, userImageUrl, userPhone, userImagePatch]);
}

UserStruct createUserStruct({
  String? userName1,
  String? userImageUrl,
  int? userPhone,
  String? userImagePatch,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      userName1: userName1,
      userImageUrl: userImageUrl,
      userPhone: userPhone,
      userImagePatch: userImagePatch,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
