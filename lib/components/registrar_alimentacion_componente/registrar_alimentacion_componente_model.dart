import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_alimentacion_componente_widget.dart'
    show RegistrarAlimentacionComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarAlimentacionComponenteModel
    extends FlutterFlowModel<RegistrarAlimentacionComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
