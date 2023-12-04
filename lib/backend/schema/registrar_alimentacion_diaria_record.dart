import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistrarAlimentacionDiariaRecord extends FirestoreRecord {
  RegistrarAlimentacionDiariaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "usuario_id" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  bool hasUsuarioId() => _usuarioId != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _usuarioId = snapshotData['usuario_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registrar_alimentacion_diaria');

  static Stream<RegistrarAlimentacionDiariaRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RegistrarAlimentacionDiariaRecord.fromSnapshot(s));

  static Future<RegistrarAlimentacionDiariaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistrarAlimentacionDiariaRecord.fromSnapshot(s));

  static RegistrarAlimentacionDiariaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RegistrarAlimentacionDiariaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrarAlimentacionDiariaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrarAlimentacionDiariaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrarAlimentacionDiariaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrarAlimentacionDiariaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrarAlimentacionDiariaRecordData({
  String? imagen,
  DateTime? fechaRegistro,
  String? usuarioId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
      'fecha_registro': fechaRegistro,
      'usuario_id': usuarioId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrarAlimentacionDiariaRecordDocumentEquality
    implements Equality<RegistrarAlimentacionDiariaRecord> {
  const RegistrarAlimentacionDiariaRecordDocumentEquality();

  @override
  bool equals(RegistrarAlimentacionDiariaRecord? e1,
      RegistrarAlimentacionDiariaRecord? e2) {
    return e1?.imagen == e2?.imagen &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.usuarioId == e2?.usuarioId;
  }

  @override
  int hash(RegistrarAlimentacionDiariaRecord? e) =>
      const ListEquality().hash([e?.imagen, e?.fechaRegistro, e?.usuarioId]);

  @override
  bool isValidKey(Object? o) => o is RegistrarAlimentacionDiariaRecord;
}
