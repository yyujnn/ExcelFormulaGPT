import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormulaHistoryRecord extends FirestoreRecord {
  FormulaHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "request_formula" field.
  String? _requestFormula;
  String get requestFormula => _requestFormula ?? '';
  bool hasRequestFormula() => _requestFormula != null;

  // "response_formula" field.
  String? _responseFormula;
  String get responseFormula => _responseFormula ?? '';
  bool hasResponseFormula() => _responseFormula != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _requestFormula = snapshotData['request_formula'] as String?;
    _responseFormula = snapshotData['response_formula'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formula_history');

  static Stream<FormulaHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormulaHistoryRecord.fromSnapshot(s));

  static Future<FormulaHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormulaHistoryRecord.fromSnapshot(s));

  static FormulaHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormulaHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormulaHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormulaHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormulaHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormulaHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormulaHistoryRecordData({
  String? requestFormula,
  String? responseFormula,
  DocumentReference? user,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request_formula': requestFormula,
      'response_formula': responseFormula,
      'user': user,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormulaHistoryRecordDocumentEquality
    implements Equality<FormulaHistoryRecord> {
  const FormulaHistoryRecordDocumentEquality();

  @override
  bool equals(FormulaHistoryRecord? e1, FormulaHistoryRecord? e2) {
    return e1?.requestFormula == e2?.requestFormula &&
        e1?.responseFormula == e2?.responseFormula &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(FormulaHistoryRecord? e) => const ListEquality()
      .hash([e?.requestFormula, e?.responseFormula, e?.user, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is FormulaHistoryRecord;
}
