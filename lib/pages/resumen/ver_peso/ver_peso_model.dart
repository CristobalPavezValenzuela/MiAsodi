import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ver_peso_widget.dart' show VerPesoWidget;
import 'package:flutter/material.dart';

class VerPesoModel extends FlutterFlowModel<VerPesoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mesPeso widget.
  String? mesPesoValue;
  FormFieldController<String>? mesPesoValueController;
  // State field(s) for anoPeso widget.
  String? anoPesoValue;
  FormFieldController<String>? anoPesoValueController;

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
