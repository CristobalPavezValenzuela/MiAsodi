import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_glucemia_componente_widget.dart'
    show RegistrarGlucemiaComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarGlucemiaComponenteModel
    extends FlutterFlowModel<RegistrarGlucemiaComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Glucemia widget.
  FocusNode? glucemiaFocusNode;
  TextEditingController? glucemiaController;
  String? Function(BuildContext, String?)? glucemiaControllerValidator;
  String? _glucemiaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    glucemiaControllerValidator = _glucemiaControllerValidator;
  }

  @override
  void dispose() {
    glucemiaFocusNode?.dispose();
    glucemiaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
