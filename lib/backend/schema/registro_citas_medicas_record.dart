import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroCitasMedicasRecord extends FirestoreRecord {
  RegistroCitasMedicasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre_medico" field.
  String? _nombreMedico;
  String get nombreMedico => _nombreMedico ?? '';
  bool hasNombreMedico() => _nombreMedico != null;

  // "motivo_consulta" field.
  String? _motivoConsulta;
  String get motivoConsulta => _motivoConsulta ?? '';
  bool hasMotivoConsulta() => _motivoConsulta != null;

  // "fecha_hora_cita" field.
  DateTime? _fechaHoraCita;
  DateTime? get fechaHoraCita => _fechaHoraCita;
  bool hasFechaHoraCita() => _fechaHoraCita != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "nombre_establecimiento" field.
  String? _nombreEstablecimiento;
  String get nombreEstablecimiento => _nombreEstablecimiento ?? '';
  bool hasNombreEstablecimiento() => _nombreEstablecimiento != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  void _initializeFields() {
    _nombreMedico = snapshotData['nombre_medico'] as String?;
    _motivoConsulta = snapshotData['motivo_consulta'] as String?;
    _fechaHoraCita = snapshotData['fecha_hora_cita'] as DateTime?;
    _idUsuario = snapshotData['id_usuario'] as String?;
    _nombreEstablecimiento = snapshotData['nombre_establecimiento'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_citas_medicas');

  static Stream<RegistroCitasMedicasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroCitasMedicasRecord.fromSnapshot(s));

  static Future<RegistroCitasMedicasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroCitasMedicasRecord.fromSnapshot(s));

  static RegistroCitasMedicasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroCitasMedicasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroCitasMedicasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroCitasMedicasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroCitasMedicasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroCitasMedicasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroCitasMedicasRecordData({
  String? nombreMedico,
  String? motivoConsulta,
  DateTime? fechaHoraCita,
  String? idUsuario,
  String? nombreEstablecimiento,
  DateTime? fechaRegistro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_medico': nombreMedico,
      'motivo_consulta': motivoConsulta,
      'fecha_hora_cita': fechaHoraCita,
      'id_usuario': idUsuario,
      'nombre_establecimiento': nombreEstablecimiento,
      'fecha_registro': fechaRegistro,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroCitasMedicasRecordDocumentEquality
    implements Equality<RegistroCitasMedicasRecord> {
  const RegistroCitasMedicasRecordDocumentEquality();

  @override
  bool equals(RegistroCitasMedicasRecord? e1, RegistroCitasMedicasRecord? e2) {
    return e1?.nombreMedico == e2?.nombreMedico &&
        e1?.motivoConsulta == e2?.motivoConsulta &&
        e1?.fechaHoraCita == e2?.fechaHoraCita &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.nombreEstablecimiento == e2?.nombreEstablecimiento &&
        e1?.fechaRegistro == e2?.fechaRegistro;
  }

  @override
  int hash(RegistroCitasMedicasRecord? e) => const ListEquality().hash([
        e?.nombreMedico,
        e?.motivoConsulta,
        e?.fechaHoraCita,
        e?.idUsuario,
        e?.nombreEstablecimiento,
        e?.fechaRegistro
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroCitasMedicasRecord;
}
