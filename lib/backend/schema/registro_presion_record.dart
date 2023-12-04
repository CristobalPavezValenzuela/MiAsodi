import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroPresionRecord extends FirestoreRecord {
  RegistroPresionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "presion_sistolica" field.
  double? _presionSistolica;
  double get presionSistolica => _presionSistolica ?? 0.0;
  bool hasPresionSistolica() => _presionSistolica != null;

  // "presion_diastolica" field.
  double? _presionDiastolica;
  double get presionDiastolica => _presionDiastolica ?? 0.0;
  bool hasPresionDiastolica() => _presionDiastolica != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "fecha_grafico" field.
  String? _fechaGrafico;
  String get fechaGrafico => _fechaGrafico ?? '';
  bool hasFechaGrafico() => _fechaGrafico != null;

  // "pulso" field.
  int? _pulso;
  int get pulso => _pulso ?? 0;
  bool hasPulso() => _pulso != null;

  // "fecha_filtro_ano" field.
  String? _fechaFiltroAno;
  String get fechaFiltroAno => _fechaFiltroAno ?? '';
  bool hasFechaFiltroAno() => _fechaFiltroAno != null;

  // "fecha_filtro_mes" field.
  String? _fechaFiltroMes;
  String get fechaFiltroMes => _fechaFiltroMes ?? '';
  bool hasFechaFiltroMes() => _fechaFiltroMes != null;

  void _initializeFields() {
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _presionSistolica = castToType<double>(snapshotData['presion_sistolica']);
    _presionDiastolica = castToType<double>(snapshotData['presion_diastolica']);
    _idUsuario = snapshotData['id_usuario'] as String?;
    _fechaGrafico = snapshotData['fecha_grafico'] as String?;
    _pulso = castToType<int>(snapshotData['pulso']);
    _fechaFiltroAno = snapshotData['fecha_filtro_ano'] as String?;
    _fechaFiltroMes = snapshotData['fecha_filtro_mes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_presion');

  static Stream<RegistroPresionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroPresionRecord.fromSnapshot(s));

  static Future<RegistroPresionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroPresionRecord.fromSnapshot(s));

  static RegistroPresionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroPresionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroPresionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroPresionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroPresionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroPresionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroPresionRecordData({
  DateTime? fechaRegistro,
  double? presionSistolica,
  double? presionDiastolica,
  String? idUsuario,
  String? fechaGrafico,
  int? pulso,
  String? fechaFiltroAno,
  String? fechaFiltroMes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_registro': fechaRegistro,
      'presion_sistolica': presionSistolica,
      'presion_diastolica': presionDiastolica,
      'id_usuario': idUsuario,
      'fecha_grafico': fechaGrafico,
      'pulso': pulso,
      'fecha_filtro_ano': fechaFiltroAno,
      'fecha_filtro_mes': fechaFiltroMes,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroPresionRecordDocumentEquality
    implements Equality<RegistroPresionRecord> {
  const RegistroPresionRecordDocumentEquality();

  @override
  bool equals(RegistroPresionRecord? e1, RegistroPresionRecord? e2) {
    return e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.presionSistolica == e2?.presionSistolica &&
        e1?.presionDiastolica == e2?.presionDiastolica &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.fechaGrafico == e2?.fechaGrafico &&
        e1?.pulso == e2?.pulso &&
        e1?.fechaFiltroAno == e2?.fechaFiltroAno &&
        e1?.fechaFiltroMes == e2?.fechaFiltroMes;
  }

  @override
  int hash(RegistroPresionRecord? e) => const ListEquality().hash([
        e?.fechaRegistro,
        e?.presionSistolica,
        e?.presionDiastolica,
        e?.idUsuario,
        e?.fechaGrafico,
        e?.pulso,
        e?.fechaFiltroAno,
        e?.fechaFiltroMes
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroPresionRecord;
}
