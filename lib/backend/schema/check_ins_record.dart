import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckInsRecord extends FirestoreRecord {
  CheckInsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sleep" field.
  double? _sleep;
  double get sleep => _sleep ?? 0.0;
  bool hasSleep() => _sleep != null;

  // "mood" field.
  double? _mood;
  double get mood => _mood ?? 0.0;
  bool hasMood() => _mood != null;

  // "focus" field.
  double? _focus;
  double get focus => _focus ?? 0.0;
  bool hasFocus() => _focus != null;

  // "energy" field.
  double? _energy;
  double get energy => _energy ?? 0.0;
  bool hasEnergy() => _energy != null;

  // "soreness" field.
  double? _soreness;
  double get soreness => _soreness ?? 0.0;
  bool hasSoreness() => _soreness != null;

  // "fatigue" field.
  double? _fatigue;
  double get fatigue => _fatigue ?? 0.0;
  bool hasFatigue() => _fatigue != null;

  // "trained" field.
  bool? _trained;
  bool get trained => _trained ?? false;
  bool hasTrained() => _trained != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "recoveryscore" field.
  double? _recoveryscore;
  double get recoveryscore => _recoveryscore ?? 0.0;
  bool hasRecoveryscore() => _recoveryscore != null;

  // "dayNumber" field.
  int? _dayNumber;
  int get dayNumber => _dayNumber ?? 0;
  bool hasDayNumber() => _dayNumber != null;

  // "check_in_date" field.
  DateTime? _checkInDate;
  DateTime? get checkInDate => _checkInDate;
  bool hasCheckInDate() => _checkInDate != null;

  // "weekStart" field.
  DateTime? _weekStart;
  DateTime? get weekStart => _weekStart;
  bool hasWeekStart() => _weekStart != null;

  void _initializeFields() {
    _sleep = castToType<double>(snapshotData['sleep']);
    _mood = castToType<double>(snapshotData['mood']);
    _focus = castToType<double>(snapshotData['focus']);
    _energy = castToType<double>(snapshotData['energy']);
    _soreness = castToType<double>(snapshotData['soreness']);
    _fatigue = castToType<double>(snapshotData['fatigue']);
    _trained = snapshotData['trained'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _recoveryscore = castToType<double>(snapshotData['recoveryscore']);
    _dayNumber = castToType<int>(snapshotData['dayNumber']);
    _checkInDate = snapshotData['check_in_date'] as DateTime?;
    _weekStart = snapshotData['weekStart'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('check_ins');

  static Stream<CheckInsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckInsRecord.fromSnapshot(s));

  static Future<CheckInsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckInsRecord.fromSnapshot(s));

  static CheckInsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckInsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckInsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckInsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckInsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckInsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCheckInsRecordData({
  double? sleep,
  double? mood,
  double? focus,
  double? energy,
  double? soreness,
  double? fatigue,
  bool? trained,
  DateTime? createdAt,
  DocumentReference? userRef,
  double? recoveryscore,
  int? dayNumber,
  DateTime? checkInDate,
  DateTime? weekStart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sleep': sleep,
      'mood': mood,
      'focus': focus,
      'energy': energy,
      'soreness': soreness,
      'fatigue': fatigue,
      'trained': trained,
      'created_at': createdAt,
      'userRef': userRef,
      'recoveryscore': recoveryscore,
      'dayNumber': dayNumber,
      'check_in_date': checkInDate,
      'weekStart': weekStart,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckInsRecordDocumentEquality implements Equality<CheckInsRecord> {
  const CheckInsRecordDocumentEquality();

  @override
  bool equals(CheckInsRecord? e1, CheckInsRecord? e2) {
    return e1?.sleep == e2?.sleep &&
        e1?.mood == e2?.mood &&
        e1?.focus == e2?.focus &&
        e1?.energy == e2?.energy &&
        e1?.soreness == e2?.soreness &&
        e1?.fatigue == e2?.fatigue &&
        e1?.trained == e2?.trained &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef &&
        e1?.recoveryscore == e2?.recoveryscore &&
        e1?.dayNumber == e2?.dayNumber &&
        e1?.checkInDate == e2?.checkInDate &&
        e1?.weekStart == e2?.weekStart;
  }

  @override
  int hash(CheckInsRecord? e) => const ListEquality().hash([
        e?.sleep,
        e?.mood,
        e?.focus,
        e?.energy,
        e?.soreness,
        e?.fatigue,
        e?.trained,
        e?.createdAt,
        e?.userRef,
        e?.recoveryscore,
        e?.dayNumber,
        e?.checkInDate,
        e?.weekStart
      ]);

  @override
  bool isValidKey(Object? o) => o is CheckInsRecord;
}
