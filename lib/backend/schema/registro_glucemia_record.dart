import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroGlucemiaRecord extends FirestoreRecord {
  RegistroGlucemiaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "registro_glucemia" field.
  double? _registroGlucemia;
  double get registroGlucemia => _registroGlucemia ?? 0.0;
  bool hasRegistroGlucemia() => _registroGlucemia != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "fecha_grafico" field.
  String? _fechaGrafico;
  String get fechaGrafico => _fechaGrafico ?? '';
  bool hasFechaGrafico() => _fechaGrafico != null;

  // "fecha_filtro_mes" field.
  String? _fechaFiltroMes;
  String get fechaFiltroMes => _fechaFiltroMes ?? '';
  bool hasFechaFiltroMes() => _fechaFiltroMes != null;

  // "fecha_filtro_ano" field.
  String? _fechaFiltroAno;
  String get fechaFiltroAno => _fechaFiltroAno ?? '';
  bool hasFechaFiltroAno() => _fechaFiltroAno != null;

  void _initializeFields() {
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _registroGlucemia = castToType<double>(snapshotData['registro_glucemia']);
    _idUsuario = snapshotData['id_usuario'] as String?;
    _fechaGrafico = snapshotData['fecha_grafico'] as String?;
    _fechaFiltroMes = snapshotData['fecha_filtro_mes'] as String?;
    _fechaFiltroAno = snapshotData['fecha_filtro_ano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_glucemia');

  static Stream<RegistroGlucemiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroGlucemiaRecord.fromSnapshot(s));

  static Future<RegistroGlucemiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroGlucemiaRecord.fromSnapshot(s));

  static RegistroGlucemiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroGlucemiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroGlucemiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroGlucemiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroGlucemiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroGlucemiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroGlucemiaRecordData({
  DateTime? fechaRegistro,
  double? registroGlucemia,
  String? idUsuario,
  String? fechaGrafico,
  String? fechaFiltroMes,
  String? fechaFiltroAno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_registro': fechaRegistro,
      'registro_glucemia': registroGlucemia,
      'id_usuario': idUsuario,
      'fecha_grafico': fechaGrafico,
      'fecha_filtro_mes': fechaFiltroMes,
      'fecha_filtro_ano': fechaFiltroAno,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroGlucemiaRecordDocumentEquality
    implements Equality<RegistroGlucemiaRecord> {
  const RegistroGlucemiaRecordDocumentEquality();

  @override
  bool equals(RegistroGlucemiaRecord? e1, RegistroGlucemiaRecord? e2) {
    return e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.registroGlucemia == e2?.registroGlucemia &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.fechaGrafico == e2?.fechaGrafico &&
        e1?.fechaFiltroMes == e2?.fechaFiltroMes &&
        e1?.fechaFiltroAno == e2?.fechaFiltroAno;
  }

  @override
  int hash(RegistroGlucemiaRecord? e) => const ListEquality().hash([
        e?.fechaRegistro,
        e?.registroGlucemia,
        e?.idUsuario,
        e?.fechaGrafico,
        e?.fechaFiltroMes,
        e?.fechaFiltroAno
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroGlucemiaRecord;
}
