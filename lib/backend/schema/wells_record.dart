import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WellsRecord extends FirestoreRecord {
  WellsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adres" field.
  String? _adres;
  String get adres => _adres ?? '';
  bool hasAdres() => _adres != null;

  // "dewbit" field.
  double? _dewbit;
  double get dewbit => _dewbit ?? 0.0;
  bool hasDewbit() => _dewbit != null;

  // "descript" field.
  String? _descript;
  String get descript => _descript ?? '';
  bool hasDescript() => _descript != null;

  // "dinamic" field.
  double? _dinamic;
  double get dinamic => _dinamic ?? 0.0;
  bool hasDinamic() => _dinamic != null;

  // "filtr" field.
  String? _filtr;
  String get filtr => _filtr ?? '';
  bool hasFiltr() => _filtr != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "static" field.
  double? _static;
  double get static => _static ?? 0.0;
  bool hasStatic() => _static != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "id_well" field.
  double? _idWell;
  double get idWell => _idWell ?? 0.0;
  bool hasIdWell() => _idWell != null;

  void _initializeFields() {
    _adres = snapshotData['adres'] as String?;
    _dewbit = castToType<double>(snapshotData['dewbit']);
    _descript = snapshotData['descript'] as String?;
    _dinamic = castToType<double>(snapshotData['dinamic']);
    _filtr = snapshotData['filtr'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _static = castToType<double>(snapshotData['static']);
    _type = snapshotData['type'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _idWell = castToType<double>(snapshotData['id_well']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Wells');

  static Stream<WellsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WellsRecord.fromSnapshot(s));

  static Future<WellsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WellsRecord.fromSnapshot(s));

  static WellsRecord fromSnapshot(DocumentSnapshot snapshot) => WellsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WellsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WellsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WellsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WellsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWellsRecordData({
  String? adres,
  double? dewbit,
  String? descript,
  double? dinamic,
  String? filtr,
  LatLng? location,
  double? static,
  String? type,
  String? userId,
  double? idWell,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adres': adres,
      'dewbit': dewbit,
      'descript': descript,
      'dinamic': dinamic,
      'filtr': filtr,
      'location': location,
      'static': static,
      'type': type,
      'user_id': userId,
      'id_well': idWell,
    }.withoutNulls,
  );

  return firestoreData;
}

class WellsRecordDocumentEquality implements Equality<WellsRecord> {
  const WellsRecordDocumentEquality();

  @override
  bool equals(WellsRecord? e1, WellsRecord? e2) {
    return e1?.adres == e2?.adres &&
        e1?.dewbit == e2?.dewbit &&
        e1?.descript == e2?.descript &&
        e1?.dinamic == e2?.dinamic &&
        e1?.filtr == e2?.filtr &&
        e1?.location == e2?.location &&
        e1?.static == e2?.static &&
        e1?.type == e2?.type &&
        e1?.userId == e2?.userId &&
        e1?.idWell == e2?.idWell;
  }

  @override
  int hash(WellsRecord? e) => const ListEquality().hash([
        e?.adres,
        e?.dewbit,
        e?.descript,
        e?.dinamic,
        e?.filtr,
        e?.location,
        e?.static,
        e?.type,
        e?.userId,
        e?.idWell
      ]);

  @override
  bool isValidKey(Object? o) => o is WellsRecord;
}
