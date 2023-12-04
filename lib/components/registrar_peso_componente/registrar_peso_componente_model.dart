import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_peso_componente_widget.dart'
    show RegistrarPesoComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarPesoComponenteModel
    extends FlutterFlowModel<RegistrarPesoComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Peso widget.
  FocusNode? pesoFocusNode;
  TextEditingController? pesoController;
  String? Function(BuildContext, String?)? pesoControllerValidator;
  String? _pesoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pesoControllerValidator = _pesoControllerValidator;
  }

  @override
  void dispose() {
    pesoFocusNode?.dispose();
    pesoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
