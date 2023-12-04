import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroDocumentacionRecord extends FirestoreRecord {
  RegistroDocumentacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario_id" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  bool hasUsuarioId() => _usuarioId != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  void _initializeFields() {
    _usuarioId = snapshotData['usuario_id'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _documento = snapshotData['documento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_documentacion');

  static Stream<RegistroDocumentacionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroDocumentacionRecord.fromSnapshot(s));

  static Future<RegistroDocumentacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroDocumentacionRecord.fromSnapshot(s));

  static RegistroDocumentacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroDocumentacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroDocumentacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroDocumentacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroDocumentacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroDocumentacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroDocumentacionRecordData({
  String? usuarioId,
  DateTime? fechaRegistro,
  String? documento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario_id': usuarioId,
      'fecha_registro': fechaRegistro,
      'documento': documento,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroDocumentacionRecordDocumentEquality
    implements Equality<RegistroDocumentacionRecord> {
  const RegistroDocumentacionRecordDocumentEquality();

  @override
  bool equals(
      RegistroDocumentacionRecord? e1, RegistroDocumentacionRecord? e2) {
    return e1?.usuarioId == e2?.usuarioId &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.documento == e2?.documento;
  }

  @override
  int hash(RegistroDocumentacionRecord? e) =>
      const ListEquality().hash([e?.usuarioId, e?.fechaRegistro, e?.documento]);

  @override
  bool isValidKey(Object? o) => o is RegistroDocumentacionRecord;
}
