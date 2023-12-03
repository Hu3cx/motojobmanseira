import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntregadorRecord extends FirestoreRecord {
  EntregadorRecord._(
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

  // "cpf" field.
  double? _cpf;
  double get cpf => _cpf ?? 0.0;
  bool hasCpf() => _cpf != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "motoboy" field.
  bool? _motoboy;
  bool get motoboy => _motoboy ?? false;
  bool hasMotoboy() => _motoboy != null;

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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "restaurante" field.
  bool? _restaurante;
  bool get restaurante => _restaurante ?? false;
  bool hasRestaurante() => _restaurante != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _cpf = castToType<double>(snapshotData['cpf']);
    _endereco = snapshotData['endereco'] as String?;
    _motoboy = snapshotData['motoboy'] as bool?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _restaurante = snapshotData['restaurante'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Entregador');

  static Stream<EntregadorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EntregadorRecord.fromSnapshot(s));

  static Future<EntregadorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EntregadorRecord.fromSnapshot(s));

  static EntregadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EntregadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EntregadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EntregadorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EntregadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EntregadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEntregadorRecordData({
  String? email,
  String? displayName,
  double? cpf,
  String? endereco,
  bool? motoboy,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? photoUrl,
  bool? restaurante,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'cpf': cpf,
      'endereco': endereco,
      'motoboy': motoboy,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'restaurante': restaurante,
    }.withoutNulls,
  );

  return firestoreData;
}

class EntregadorRecordDocumentEquality implements Equality<EntregadorRecord> {
  const EntregadorRecordDocumentEquality();

  @override
  bool equals(EntregadorRecord? e1, EntregadorRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.cpf == e2?.cpf &&
        e1?.endereco == e2?.endereco &&
        e1?.motoboy == e2?.motoboy &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.restaurante == e2?.restaurante;
  }

  @override
  int hash(EntregadorRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.cpf,
        e?.endereco,
        e?.motoboy,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.photoUrl,
        e?.restaurante
      ]);

  @override
  bool isValidKey(Object? o) => o is EntregadorRecord;
}
