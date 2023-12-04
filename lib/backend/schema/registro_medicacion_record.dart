import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroMedicacionRecord extends FirestoreRecord {
  RegistroMedicacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre_medicamento" field.
  String? _nombreMedicamento;
  String get nombreMedicamento => _nombreMedicamento ?? '';
  bool hasNombreMedicamento() => _nombreMedicamento != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "tipo_medicamento" field.
  String? _tipoMedicamento;
  String get tipoMedicamento => _tipoMedicamento ?? '';
  bool hasTipoMedicamento() => _tipoMedicamento != null;

  // "frecuencia_hora" field.
  int? _frecuenciaHora;
  int get frecuenciaHora => _frecuenciaHora ?? 0;
  bool hasFrecuenciaHora() => _frecuenciaHora != null;

  // "duracion_dias_consumo" field.
  int? _duracionDiasConsumo;
  int get duracionDiasConsumo => _duracionDiasConsumo ?? 0;
  bool hasDuracionDiasConsumo() => _duracionDiasConsumo != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  void _initializeFields() {
    _nombreMedicamento = snapshotData['nombre_medicamento'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _tipoMedicamento = snapshotData['tipo_medicamento'] as String?;
    _frecuenciaHora = castToType<int>(snapshotData['frecuencia_hora']);
    _duracionDiasConsumo =
        castToType<int>(snapshotData['duracion_dias_consumo']);
    _idUsuario = snapshotData['id_usuario'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_medicacion');

  static Stream<RegistroMedicacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroMedicacionRecord.fromSnapshot(s));

  static Future<RegistroMedicacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroMedicacionRecord.fromSnapshot(s));

  static RegistroMedicacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroMedicacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroMedicacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroMedicacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroMedicacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroMedicacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroMedicacionRecordData({
  String? nombreMedicamento,
  int? cantidad,
  String? tipoMedicamento,
  int? frecuenciaHora,
  int? duracionDiasConsumo,
  String? idUsuario,
  DateTime? fechaRegistro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_medicamento': nombreMedicamento,
      'cantidad': cantidad,
      'tipo_medicamento': tipoMedicamento,
      'frecuencia_hora': frecuenciaHora,
      'duracion_dias_consumo': duracionDiasConsumo,
      'id_usuario': idUsuario,
      'fecha_registro': fechaRegistro,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroMedicacionRecordDocumentEquality
    implements Equality<RegistroMedicacionRecord> {
  const RegistroMedicacionRecordDocumentEquality();

  @override
  bool equals(RegistroMedicacionRecord? e1, RegistroMedicacionRecord? e2) {
    return e1?.nombreMedicamento == e2?.nombreMedicamento &&
        e1?.cantidad == e2?.cantidad &&
        e1?.tipoMedicamento == e2?.tipoMedicamento &&
        e1?.frecuenciaHora == e2?.frecuenciaHora &&
        e1?.duracionDiasConsumo == e2?.duracionDiasConsumo &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.fechaRegistro == e2?.fechaRegistro;
  }

  @override
  int hash(RegistroMedicacionRecord? e) => const ListEquality().hash([
        e?.nombreMedicamento,
        e?.cantidad,
        e?.tipoMedicamento,
        e?.frecuenciaHora,
        e?.duracionDiasConsumo,
        e?.idUsuario,
        e?.fechaRegistro
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroMedicacionRecord;
}
