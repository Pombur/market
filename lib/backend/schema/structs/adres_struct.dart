// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AdresStruct extends FFFirebaseStruct {
  AdresStruct({
    String? adres,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _adres = adres,
        super(firestoreUtilData);

  // "adres" field.
  String? _adres;
  String get adres => _adres ?? '';
  set adres(String? val) => _adres = val;
  bool hasAdres() => _adres != null;

  static AdresStruct fromMap(Map<String, dynamic> data) => AdresStruct(
        adres: data['adres'] as String?,
      );

  static AdresStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdresStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'adres': _adres,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'adres': serializeParam(
          _adres,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdresStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdresStruct(
        adres: deserializeParam(
          data['adres'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdresStruct && adres == other.adres;
  }

  @override
  int get hashCode => const ListEquality().hash([adres]);
}

AdresStruct createAdresStruct({
  String? adres,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdresStruct(
      adres: adres,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdresStruct? updateAdresStruct(
  AdresStruct? adresStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adresStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdresStructData(
  Map<String, dynamic> firestoreData,
  AdresStruct? adresStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adresStruct == null) {
    return;
  }
  if (adresStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adresStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adresStructData = getAdresFirestoreData(adresStruct, forFieldValue);
  final nestedData =
      adresStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adresStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdresFirestoreData(
  AdresStruct? adresStruct, [
  bool forFieldValue = false,
]) {
  if (adresStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adresStruct.toMap());

  // Add any Firestore field values
  adresStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdresListFirestoreData(
  List<AdresStruct>? adresStructs,
) =>
    adresStructs?.map((e) => getAdresFirestoreData(e, true)).toList() ?? [];
