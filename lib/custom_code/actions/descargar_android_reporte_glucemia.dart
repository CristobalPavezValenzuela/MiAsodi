// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:convert' show utf8;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';
import 'package:download/download.dart';

Future<List<dynamic>> descargarAndroidReporteGlucemia(
  List<RegistroGlucemiaRecord>? docs,
) async {
  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "Your Company Name";
  String companyAddress = "Your Company Address";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent =
      header + "FechaRegistro         ,         RegistroGlucemia";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.fechaRegistro.toString() +
      "," +
      record.registroGlucemia.toString());

  final fileName = "Reporte de Glucemia " + DateTime.now().toString() + ".csv";

  Directory? appDir;

  // Encode the string as a List<int> of UTF-8 bytes
  List<int> bytes = utf8.encode(fileContent);

  Stream<int> stream = Stream.fromIterable(bytes);

  if (kIsWeb) {
    await download(stream, fileName);
    return [
      {'fileName': fileName},
      {'filePath': fileName}
    ];
  } else if (Platform.isAndroid) {
    appDir = await getExternalStorageDirectory();
  } else if (Platform.isIOS) {
    appDir = await getApplicationDocumentsDirectory();
  } else {
    appDir = await getDownloadsDirectory();
  }
  String pathName = appDir?.path ?? "";
  String destinationPath = await getDestinationPathName(fileName, pathName,
      isBackwardSlash: Platform.isWindows);
  await download(stream, destinationPath);

  return [
    {'fileName': fileName},
    {'filePath': destinationPath}
  ];
}

Future<String> getDestinationPathName(String fileName, String pathName,
    {bool isBackwardSlash = true}) async {
  String destinationPath =
      pathName + "${isBackwardSlash ? "\\" : "/"}${fileName}";
  int i = 1;
  bool _isFileExists = await File(destinationPath).exists();
  while (_isFileExists) {
    _isFileExists =
        await File(pathName + "${isBackwardSlash ? "\\" : "/"}($i)${fileName}")
            .exists();
    if (_isFileExists == false) {
      destinationPath =
          pathName + "${isBackwardSlash ? "\\" : "/"}($i)${fileName}";
      break;
    }
    i++;
  }
  return destinationPath;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
