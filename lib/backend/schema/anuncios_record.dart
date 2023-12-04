import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AnunciosRecord extends FirestoreRecord {
  AnunciosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "id_creador" field.
  String? _idCreador;
  String get idCreador => _idCreador ?? '';
  bool hasIdCreador() => _idCreador != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _idCreador = snapshotData['id_creador'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnunciosRecord.fromSnapshot(s));

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnunciosRecord.fromSnapshot(s));

  static AnunciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnunciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnunciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnunciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnunciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnunciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnunciosRecordData({
  DateTime? fechaCreacion,
  String? titulo,
  String? descripcion,
  String? idCreador,
  String? imagen,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_creacion': fechaCreacion,
      'titulo': titulo,
      'descripcion': descripcion,
      'id_creador': idCreador,
      'imagen': imagen,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnunciosRecordDocumentEquality implements Equality<AnunciosRecord> {
  const AnunciosRecordDocumentEquality();

  @override
  bool equals(AnunciosRecord? e1, AnunciosRecord? e2) {
    return e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.idCreador == e2?.idCreador &&
        e1?.imagen == e2?.imagen &&
        e1?.link == e2?.link;
  }

  @override
  int hash(AnunciosRecord? e) => const ListEquality().hash([
        e?.fechaCreacion,
        e?.titulo,
        e?.descripcion,
        e?.idCreador,
        e?.imagen,
        e?.link
      ]);

  @override
  bool isValidKey(Object? o) => o is AnunciosRecord;
}
