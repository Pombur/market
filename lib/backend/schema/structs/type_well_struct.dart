// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TypeWellStruct extends FFFirebaseStruct {
  TypeWellStruct({
    String? abi,
    String? deep,
    String? crash,
    String? other,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _abi = abi,
        _deep = deep,
        _crash = crash,
        _other = other,
        super(firestoreUtilData);

  // "abi" field.
  String? _abi;
  String get abi => _abi ?? 'Абисинская';
  set abi(String? val) => _abi = val;
  bool hasAbi() => _abi != null;

  // "deep" field.
  String? _deep;
  String get deep => _deep ?? 'Погружной';
  set deep(String? val) => _deep = val;
  bool hasDeep() => _deep != null;

  // "crash" field.
  String? _crash;
  String get crash => _crash ?? 'Разведка';
  set crash(String? val) => _crash = val;
  bool hasCrash() => _crash != null;

  // "other" field.
  String? _other;
  String get other => _other ?? 'Иное...';
  set other(String? val) => _other = val;
  bool hasOther() => _other != null;

  static TypeWellStruct fromMap(Map<String, dynamic> data) => TypeWellStruct(
        abi: data['abi'] as String?,
        deep: data['deep'] as String?,
        crash: data['crash'] as String?,
        other: data['other'] as String?,
      );

  static TypeWellStruct? maybeFromMap(dynamic data) =>
      data is Map ? TypeWellStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'abi': _abi,
        'deep': _deep,
        'crash': _crash,
        'other': _other,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'abi': serializeParam(
          _abi,
          ParamType.String,
        ),
        'deep': serializeParam(
          _deep,
          ParamType.String,
        ),
        'crash': serializeParam(
          _crash,
          ParamType.String,
        ),
        'other': serializeParam(
          _other,
          ParamType.String,
        ),
      }.withoutNulls;

  static TypeWellStruct fromSerializableMap(Map<String, dynamic> data) =>
      TypeWellStruct(
        abi: deserializeParam(
          data['abi'],
          ParamType.String,
          false,
        ),
        deep: deserializeParam(
          data['deep'],
          ParamType.String,
          false,
        ),
        crash: deserializeParam(
          data['crash'],
          ParamType.String,
          false,
        ),
        other: deserializeParam(
          data['other'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TypeWellStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TypeWellStruct &&
        abi == other.abi &&
        deep == other.deep &&
        crash == other.crash &&
        other == other.other;
  }

  @override
  int get hashCode => const ListEquality().hash([abi, deep, crash, other]);
}

TypeWellStruct createTypeWellStruct({
  String? abi,
  String? deep,
  String? crash,
  String? other,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TypeWellStruct(
      abi: abi,
      deep: deep,
      crash: crash,
      other: other,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TypeWellStruct? updateTypeWellStruct(
  TypeWellStruct? typeWell, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    typeWell
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTypeWellStructData(
  Map<String, dynamic> firestoreData,
  TypeWellStruct? typeWell,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (typeWell == null) {
    return;
  }
  if (typeWell.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && typeWell.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final typeWellData = getTypeWellFirestoreData(typeWell, forFieldValue);
  final nestedData = typeWellData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = typeWell.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTypeWellFirestoreData(
  TypeWellStruct? typeWell, [
  bool forFieldValue = false,
]) {
  if (typeWell == null) {
    return {};
  }
  final firestoreData = mapToFirestore(typeWell.toMap());

  // Add any Firestore field values
  typeWell.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTypeWellListFirestoreData(
  List<TypeWellStruct>? typeWells,
) =>
    typeWells?.map((e) => getTypeWellFirestoreData(e, true)).toList() ?? [];
