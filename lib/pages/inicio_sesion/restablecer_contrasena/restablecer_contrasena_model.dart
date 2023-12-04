import '/flutter_flow/flutter_flow_util.dart';
import 'restablecer_contrasena_widget.dart' show RestablecerContrasenaWidget;
import 'package:flutter/material.dart';

class RestablecerContrasenaModel
    extends FlutterFlowModel<RestablecerContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    correoFocusNode?.dispose();
    correoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
