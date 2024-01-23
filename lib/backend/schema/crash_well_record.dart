import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CrashWellRecord extends FirestoreRecord {
  CrashWellRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adres" field.
  String? _adres;
  String get adres => _adres ?? '';
  bool hasAdres() => _adres != null;

  // "descript" field.
  String? _descript;
  String get descript => _descript ?? '';
  bool hasDescript() => _descript != null;

  // "id_well" field.
  double? _idWell;
  double get idWell => _idWell ?? 0.0;
  bool hasIdWell() => _idWell != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _adres = snapshotData['adres'] as String?;
    _descript = snapshotData['descript'] as String?;
    _idWell = castToType<double>(snapshotData['id_well']);
    _userId = snapshotData['user_id'] as String?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CrashWell');

  static Stream<CrashWellRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CrashWellRecord.fromSnapshot(s));

  static Future<CrashWellRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CrashWellRecord.fromSnapshot(s));

  static CrashWellRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CrashWellRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CrashWellRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CrashWellRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CrashWellRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CrashWellRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCrashWellRecordData({
  String? adres,
  String? descript,
  double? idWell,
  String? userId,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adres': adres,
      'descript': descript,
      'id_well': idWell,
      'user_id': userId,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class CrashWellRecordDocumentEquality implements Equality<CrashWellRecord> {
  const CrashWellRecordDocumentEquality();

  @override
  bool equals(CrashWellRecord? e1, CrashWellRecord? e2) {
    return e1?.adres == e2?.adres &&
        e1?.descript == e2?.descript &&
        e1?.idWell == e2?.idWell &&
        e1?.userId == e2?.userId &&
        e1?.location == e2?.location;
  }

  @override
  int hash(CrashWellRecord? e) => const ListEquality()
      .hash([e?.adres, e?.descript, e?.idWell, e?.userId, e?.location]);

  @override
  bool isValidKey(Object? o) => o is CrashWellRecord;
}
