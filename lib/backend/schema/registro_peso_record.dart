import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroPesoRecord extends FirestoreRecord {
  RegistroPesoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

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
    _idUsuario = snapshotData['id_usuario'] as String?;
    _peso = castToType<double>(snapshotData['peso']);
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _fechaGrafico = snapshotData['fecha_grafico'] as String?;
    _fechaFiltroMes = snapshotData['fecha_filtro_mes'] as String?;
    _fechaFiltroAno = snapshotData['fecha_filtro_ano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_peso');

  static Stream<RegistroPesoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroPesoRecord.fromSnapshot(s));

  static Future<RegistroPesoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistroPesoRecord.fromSnapshot(s));

  static RegistroPesoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroPesoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroPesoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroPesoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroPesoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroPesoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroPesoRecordData({
  String? idUsuario,
  double? peso,
  DateTime? fechaRegistro,
  String? fechaGrafico,
  String? fechaFiltroMes,
  String? fechaFiltroAno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_usuario': idUsuario,
      'peso': peso,
      'fecha_registro': fechaRegistro,
      'fecha_grafico': fechaGrafico,
      'fecha_filtro_mes': fechaFiltroMes,
      'fecha_filtro_ano': fechaFiltroAno,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroPesoRecordDocumentEquality
    implements Equality<RegistroPesoRecord> {
  const RegistroPesoRecordDocumentEquality();

  @override
  bool equals(RegistroPesoRecord? e1, RegistroPesoRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.peso == e2?.peso &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.fechaGrafico == e2?.fechaGrafico &&
        e1?.fechaFiltroMes == e2?.fechaFiltroMes &&
        e1?.fechaFiltroAno == e2?.fechaFiltroAno;
  }

  @override
  int hash(RegistroPesoRecord? e) => const ListEquality().hash([
        e?.idUsuario,
        e?.peso,
        e?.fechaRegistro,
        e?.fechaGrafico,
        e?.fechaFiltroMes,
        e?.fechaFiltroAno
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroPesoRecord;
}
