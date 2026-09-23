import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "sleep" field.
  int? _sleep;
  int get sleep => _sleep ?? 0;
  bool hasSleep() => _sleep != null;

  // "mood" field.
  int? _mood;
  int get mood => _mood ?? 0;
  bool hasMood() => _mood != null;

  // "focus" field.
  int? _focus;
  int get focus => _focus ?? 0;
  bool hasFocus() => _focus != null;

  // "energy" field.
  int? _energy;
  int get energy => _energy ?? 0;
  bool hasEnergy() => _energy != null;

  // "soreness" field.
  int? _soreness;
  int get soreness => _soreness ?? 0;
  bool hasSoreness() => _soreness != null;

  // "fatigue" field.
  int? _fatigue;
  int get fatigue => _fatigue ?? 0;
  bool hasFatigue() => _fatigue != null;

  // "trained" field.
  bool? _trained;
  bool get trained => _trained ?? false;
  bool hasTrained() => _trained != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _sleep = castToType<int>(snapshotData['sleep']);
    _mood = castToType<int>(snapshotData['mood']);
    _focus = castToType<int>(snapshotData['focus']);
    _energy = castToType<int>(snapshotData['energy']);
    _soreness = castToType<int>(snapshotData['soreness']);
    _fatigue = castToType<int>(snapshotData['fatigue']);
    _trained = snapshotData['trained'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? sleep,
  int? mood,
  int? focus,
  int? energy,
  int? soreness,
  int? fatigue,
  bool? trained,
  DateTime? createdAt,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'sleep': sleep,
      'mood': mood,
      'focus': focus,
      'energy': energy,
      'soreness': soreness,
      'fatigue': fatigue,
      'trained': trained,
      'created_at': createdAt,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.sleep == e2?.sleep &&
        e1?.mood == e2?.mood &&
        e1?.focus == e2?.focus &&
        e1?.energy == e2?.energy &&
        e1?.soreness == e2?.soreness &&
        e1?.fatigue == e2?.fatigue &&
        e1?.trained == e2?.trained &&
        e1?.createdAt == e2?.createdAt &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.sleep,
        e?.mood,
        e?.focus,
        e?.energy,
        e?.soreness,
        e?.fatigue,
        e?.trained,
        e?.createdAt,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
