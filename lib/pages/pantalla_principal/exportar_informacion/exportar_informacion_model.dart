import '/flutter_flow/flutter_flow_util.dart';
import 'exportar_informacion_widget.dart' show ExportarInformacionWidget;
import 'package:flutter/material.dart';

class ExportarInformacionModel
    extends FlutterFlowModel<ExportarInformacionWidget> {
  ///  Local state fields for this page.

  bool verPdf = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
