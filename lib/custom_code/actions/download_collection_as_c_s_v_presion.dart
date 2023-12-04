// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCollectionAsCSVPresion(List<RegistroPresionRecord>? docs) async {
  docs = docs ?? [];

  // Agregar info en el header
  String companyName =
      "Este es un reporte con la informacion de la presion del paciente y la fecha en que realizo el registro de esta";
  String companyAddress = "";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header +
      "fecha_registro              Presion_Sistolica              Presion_Diastolica";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.fechaRegistro.toString() +
      "      ,      " +
      record.presionSistolica.toString() +
      "         ,            " +
      record.presionDiastolica.toString());

  final fileName = "Reporte de Presión" + DateTime.now().toString() + ".csv";

  // Codifique la cadena como una Lista<int> de bytes UTF-8
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
