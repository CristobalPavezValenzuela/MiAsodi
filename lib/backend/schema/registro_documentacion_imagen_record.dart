import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroDocumentacionImagenRecord extends FirestoreRecord {
  RegistroDocumentacionImagenRecord._(
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

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _usuarioId = snapshotData['usuario_id'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_documentacion_imagen');

  static Stream<RegistroDocumentacionImagenRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RegistroDocumentacionImagenRecord.fromSnapshot(s));

  static Future<RegistroDocumentacionImagenRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroDocumentacionImagenRecord.fromSnapshot(s));

  static RegistroDocumentacionImagenRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RegistroDocumentacionImagenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroDocumentacionImagenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroDocumentacionImagenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroDocumentacionImagenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroDocumentacionImagenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroDocumentacionImagenRecordData({
  String? usuarioId,
  DateTime? fechaRegistro,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario_id': usuarioId,
      'fecha_registro': fechaRegistro,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroDocumentacionImagenRecordDocumentEquality
    implements Equality<RegistroDocumentacionImagenRecord> {
  const RegistroDocumentacionImagenRecordDocumentEquality();

  @override
  bool equals(RegistroDocumentacionImagenRecord? e1,
      RegistroDocumentacionImagenRecord? e2) {
    return e1?.usuarioId == e2?.usuarioId &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(RegistroDocumentacionImagenRecord? e) =>
      const ListEquality().hash([e?.usuarioId, e?.fechaRegistro, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is RegistroDocumentacionImagenRecord;
}
