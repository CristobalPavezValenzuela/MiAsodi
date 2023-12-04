import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "rut" field.
  String? _rut;
  String get rut => _rut ?? '';
  bool hasRut() => _rut != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  bool hasNombres() => _nombres != null;

  // "apellido_paterno" field.
  String? _apellidoPaterno;
  String get apellidoPaterno => _apellidoPaterno ?? '';
  bool hasApellidoPaterno() => _apellidoPaterno != null;

  // "apellido_materno" field.
  String? _apellidoMaterno;
  String get apellidoMaterno => _apellidoMaterno ?? '';
  bool hasApellidoMaterno() => _apellidoMaterno != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "estatura" field.
  double? _estatura;
  double get estatura => _estatura ?? 0.0;
  bool hasEstatura() => _estatura != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "hospital_perteneciente" field.
  String? _hospitalPerteneciente;
  String get hospitalPerteneciente => _hospitalPerteneciente ?? '';
  bool hasHospitalPerteneciente() => _hospitalPerteneciente != null;

  // "diabetes" field.
  bool? _diabetes;
  bool get diabetes => _diabetes ?? false;
  bool hasDiabetes() => _diabetes != null;

  // "hipertension" field.
  bool? _hipertension;
  bool get hipertension => _hipertension ?? false;
  bool hasHipertension() => _hipertension != null;

  // "enfermedad_corazon" field.
  bool? _enfermedadCorazon;
  bool get enfermedadCorazon => _enfermedadCorazon ?? false;
  bool hasEnfermedadCorazon() => _enfermedadCorazon != null;

  // "accidente_vascular" field.
  bool? _accidenteVascular;
  bool get accidenteVascular => _accidenteVascular ?? false;
  bool hasAccidenteVascular() => _accidenteVascular != null;

  // "trombosis" field.
  bool? _trombosis;
  bool get trombosis => _trombosis ?? false;
  bool hasTrombosis() => _trombosis != null;

  // "epilepsia" field.
  bool? _epilepsia;
  bool get epilepsia => _epilepsia ?? false;
  bool hasEpilepsia() => _epilepsia != null;

  // "alergias" field.
  String? _alergias;
  String get alergias => _alergias ?? '';
  bool hasAlergias() => _alergias != null;

  // "trasplantado_renal" field.
  bool? _trasplantadoRenal;
  bool get trasplantadoRenal => _trasplantadoRenal ?? false;
  bool hasTrasplantadoRenal() => _trasplantadoRenal != null;

  // "dializado" field.
  bool? _dializado;
  bool get dializado => _dializado ?? false;
  bool hasDializado() => _dializado != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "pre_dialisis" field.
  bool? _preDialisis;
  bool get preDialisis => _preDialisis ?? false;
  bool hasPreDialisis() => _preDialisis != null;

  // "hemodialisis" field.
  bool? _hemodialisis;
  bool get hemodialisis => _hemodialisis ?? false;
  bool hasHemodialisis() => _hemodialisis != null;

  // "peritoneodialisis" field.
  bool? _peritoneodialisis;
  bool get peritoneodialisis => _peritoneodialisis ?? false;
  bool hasPeritoneodialisis() => _peritoneodialisis != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _rut = snapshotData['rut'] as String?;
    _nombres = snapshotData['nombres'] as String?;
    _apellidoPaterno = snapshotData['apellido_paterno'] as String?;
    _apellidoMaterno = snapshotData['apellido_materno'] as String?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _edad = castToType<int>(snapshotData['edad']);
    _estatura = castToType<double>(snapshotData['estatura']);
    _sexo = snapshotData['sexo'] as String?;
    _hospitalPerteneciente = snapshotData['hospital_perteneciente'] as String?;
    _diabetes = snapshotData['diabetes'] as bool?;
    _hipertension = snapshotData['hipertension'] as bool?;
    _enfermedadCorazon = snapshotData['enfermedad_corazon'] as bool?;
    _accidenteVascular = snapshotData['accidente_vascular'] as bool?;
    _trombosis = snapshotData['trombosis'] as bool?;
    _epilepsia = snapshotData['epilepsia'] as bool?;
    _alergias = snapshotData['alergias'] as String?;
    _trasplantadoRenal = snapshotData['trasplantado_renal'] as bool?;
    _dializado = snapshotData['dializado'] as bool?;
    _admin = snapshotData['admin'] as bool?;
    _preDialisis = snapshotData['pre_dialisis'] as bool?;
    _hemodialisis = snapshotData['hemodialisis'] as bool?;
    _peritoneodialisis = snapshotData['peritoneodialisis'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? rut,
  String? nombres,
  String? apellidoPaterno,
  String? apellidoMaterno,
  DateTime? fechaNacimiento,
  int? edad,
  double? estatura,
  String? sexo,
  String? hospitalPerteneciente,
  bool? diabetes,
  bool? hipertension,
  bool? enfermedadCorazon,
  bool? accidenteVascular,
  bool? trombosis,
  bool? epilepsia,
  String? alergias,
  bool? trasplantadoRenal,
  bool? dializado,
  bool? admin,
  bool? preDialisis,
  bool? hemodialisis,
  bool? peritoneodialisis,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'rut': rut,
      'nombres': nombres,
      'apellido_paterno': apellidoPaterno,
      'apellido_materno': apellidoMaterno,
      'fecha_nacimiento': fechaNacimiento,
      'edad': edad,
      'estatura': estatura,
      'sexo': sexo,
      'hospital_perteneciente': hospitalPerteneciente,
      'diabetes': diabetes,
      'hipertension': hipertension,
      'enfermedad_corazon': enfermedadCorazon,
      'accidente_vascular': accidenteVascular,
      'trombosis': trombosis,
      'epilepsia': epilepsia,
      'alergias': alergias,
      'trasplantado_renal': trasplantadoRenal,
      'dializado': dializado,
      'admin': admin,
      'pre_dialisis': preDialisis,
      'hemodialisis': hemodialisis,
      'peritoneodialisis': peritoneodialisis,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.rut == e2?.rut &&
        e1?.nombres == e2?.nombres &&
        e1?.apellidoPaterno == e2?.apellidoPaterno &&
        e1?.apellidoMaterno == e2?.apellidoMaterno &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.edad == e2?.edad &&
        e1?.estatura == e2?.estatura &&
        e1?.sexo == e2?.sexo &&
        e1?.hospitalPerteneciente == e2?.hospitalPerteneciente &&
        e1?.diabetes == e2?.diabetes &&
        e1?.hipertension == e2?.hipertension &&
        e1?.enfermedadCorazon == e2?.enfermedadCorazon &&
        e1?.accidenteVascular == e2?.accidenteVascular &&
        e1?.trombosis == e2?.trombosis &&
        e1?.epilepsia == e2?.epilepsia &&
        e1?.alergias == e2?.alergias &&
        e1?.trasplantadoRenal == e2?.trasplantadoRenal &&
        e1?.dializado == e2?.dializado &&
        e1?.admin == e2?.admin &&
        e1?.preDialisis == e2?.preDialisis &&
        e1?.hemodialisis == e2?.hemodialisis &&
        e1?.peritoneodialisis == e2?.peritoneodialisis;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.rut,
        e?.nombres,
        e?.apellidoPaterno,
        e?.apellidoMaterno,
        e?.fechaNacimiento,
        e?.edad,
        e?.estatura,
        e?.sexo,
        e?.hospitalPerteneciente,
        e?.diabetes,
        e?.hipertension,
        e?.enfermedadCorazon,
        e?.accidenteVascular,
        e?.trombosis,
        e?.epilepsia,
        e?.alergias,
        e?.trasplantadoRenal,
        e?.dializado,
        e?.admin,
        e?.preDialisis,
        e?.hemodialisis,
        e?.peritoneodialisis
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
