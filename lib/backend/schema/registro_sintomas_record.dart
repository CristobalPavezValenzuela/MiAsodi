import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroSintomasRecord extends FirestoreRecord {
  RegistroSintomasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tipo_sintoma" field.
  String? _tipoSintoma;
  String get tipoSintoma => _tipoSintoma ?? '';
  bool hasTipoSintoma() => _tipoSintoma != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha_registro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  // "fecha_filtro_mes" field.
  String? _fechaFiltroMes;
  String get fechaFiltroMes => _fechaFiltroMes ?? '';
  bool hasFechaFiltroMes() => _fechaFiltroMes != null;

  // "fecha_filtro_ano" field.
  String? _fechaFiltroAno;
  String get fechaFiltroAno => _fechaFiltroAno ?? '';
  bool hasFechaFiltroAno() => _fechaFiltroAno != null;

  void _initializeFields() {
    _tipoSintoma = snapshotData['tipo_sintoma'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechaRegistro = snapshotData['fecha_registro'] as DateTime?;
    _idUsuario = snapshotData['id_usuario'] as String?;
    _fechaFiltroMes = snapshotData['fecha_filtro_mes'] as String?;
    _fechaFiltroAno = snapshotData['fecha_filtro_ano'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registro_sintomas');

  static Stream<RegistroSintomasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistroSintomasRecord.fromSnapshot(s));

  static Future<RegistroSintomasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegistroSintomasRecord.fromSnapshot(s));

  static RegistroSintomasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistroSintomasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroSintomasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroSintomasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroSintomasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroSintomasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroSintomasRecordData({
  String? tipoSintoma,
  String? descripcion,
  DateTime? fechaRegistro,
  String? idUsuario,
  String? fechaFiltroMes,
  String? fechaFiltroAno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo_sintoma': tipoSintoma,
      'descripcion': descripcion,
      'fecha_registro': fechaRegistro,
      'id_usuario': idUsuario,
      'fecha_filtro_mes': fechaFiltroMes,
      'fecha_filtro_ano': fechaFiltroAno,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroSintomasRecordDocumentEquality
    implements Equality<RegistroSintomasRecord> {
  const RegistroSintomasRecordDocumentEquality();

  @override
  bool equals(RegistroSintomasRecord? e1, RegistroSintomasRecord? e2) {
    return e1?.tipoSintoma == e2?.tipoSintoma &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.idUsuario == e2?.idUsuario &&
        e1?.fechaFiltroMes == e2?.fechaFiltroMes &&
        e1?.fechaFiltroAno == e2?.fechaFiltroAno;
  }

  @override
  int hash(RegistroSintomasRecord? e) => const ListEquality().hash([
        e?.tipoSintoma,
        e?.descripcion,
        e?.fechaRegistro,
        e?.idUsuario,
        e?.fechaFiltroMes,
        e?.fechaFiltroAno
      ]);

  @override
  bool isValidKey(Object? o) => o is RegistroSintomasRecord;
}
