import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enderecoini" field.
  String? _enderecoini;
  String get enderecoini => _enderecoini ?? '';
  bool hasEnderecoini() => _enderecoini != null;

  // "enderecofim" field.
  String? _enderecofim;
  String get enderecofim => _enderecofim ?? '';
  bool hasEnderecofim() => _enderecofim != null;

  // "valor_corrida" field.
  double? _valorCorrida;
  double get valorCorrida => _valorCorrida ?? 0.0;
  bool hasValorCorrida() => _valorCorrida != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "telefone_contato" field.
  String? _telefoneContato;
  String get telefoneContato => _telefoneContato ?? '';
  bool hasTelefoneContato() => _telefoneContato != null;

  void _initializeFields() {
    _enderecoini = snapshotData['enderecoini'] as String?;
    _enderecofim = snapshotData['enderecofim'] as String?;
    _valorCorrida = castToType<double>(snapshotData['valor_corrida']);
    _descricao = snapshotData['descricao'] as String?;
    _telefoneContato = snapshotData['telefone_contato'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  String? enderecoini,
  String? enderecofim,
  double? valorCorrida,
  String? descricao,
  String? telefoneContato,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'enderecoini': enderecoini,
      'enderecofim': enderecofim,
      'valor_corrida': valorCorrida,
      'descricao': descricao,
      'telefone_contato': telefoneContato,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.enderecoini == e2?.enderecoini &&
        e1?.enderecofim == e2?.enderecofim &&
        e1?.valorCorrida == e2?.valorCorrida &&
        e1?.descricao == e2?.descricao &&
        e1?.telefoneContato == e2?.telefoneContato;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.enderecoini,
        e?.enderecofim,
        e?.valorCorrida,
        e?.descricao,
        e?.telefoneContato
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
