// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WellsStruct extends FFFirebaseStruct {
  WellsStruct({
    List<WellsStruct>? countWells,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _countWells = countWells,
        super(firestoreUtilData);

  // "CountWells" field.
  List<WellsStruct>? _countWells;
  List<WellsStruct> get countWells => _countWells ?? const [];
  set countWells(List<WellsStruct>? val) => _countWells = val;
  void updateCountWells(Function(List<WellsStruct>) updateFn) =>
      updateFn(_countWells ??= []);
  bool hasCountWells() => _countWells != null;

  static WellsStruct fromMap(Map<String, dynamic> data) => WellsStruct(
        countWells: getStructList(
          data['CountWells'],
          WellsStruct.fromMap,
        ),
      );

  static WellsStruct? maybeFromMap(dynamic data) =>
      data is Map ? WellsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CountWells': _countWells?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CountWells': serializeParam(
          _countWells,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static WellsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WellsStruct(
        countWells: deserializeStructParam<WellsStruct>(
          data['CountWells'],
          ParamType.DataStruct,
          true,
          structBuilder: WellsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'WellsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WellsStruct &&
        listEquality.equals(countWells, other.countWells);
  }

  @override
  int get hashCode => const ListEquality().hash([countWells]);
}

WellsStruct createWellsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WellsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WellsStruct? updateWellsStruct(
  WellsStruct? wells, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wells
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWellsStructData(
  Map<String, dynamic> firestoreData,
  WellsStruct? wells,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wells == null) {
    return;
  }
  if (wells.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wells.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wellsData = getWellsFirestoreData(wells, forFieldValue);
  final nestedData = wellsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wells.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWellsFirestoreData(
  WellsStruct? wells, [
  bool forFieldValue = false,
]) {
  if (wells == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wells.toMap());

  // Add any Firestore field values
  wells.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWellsListFirestoreData(
  List<WellsStruct>? wellss,
) =>
    wellss?.map((e) => getWellsFirestoreData(e, true)).toList() ?? [];
