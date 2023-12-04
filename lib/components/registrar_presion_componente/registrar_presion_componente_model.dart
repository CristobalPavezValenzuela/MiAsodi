import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_presion_componente_widget.dart'
    show RegistrarPresionComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarPresionComponenteModel
    extends FlutterFlowModel<RegistrarPresionComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for presionsistolica widget.
  FocusNode? presionsistolicaFocusNode;
  TextEditingController? presionsistolicaController;
  String? Function(BuildContext, String?)? presionsistolicaControllerValidator;
  String? _presionsistolicaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for presiondiastolica widget.
  FocusNode? presiondiastolicaFocusNode;
  TextEditingController? presiondiastolicaController;
  String? Function(BuildContext, String?)? presiondiastolicaControllerValidator;
  String? _presiondiastolicaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for pulso widget.
  FocusNode? pulsoFocusNode;
  TextEditingController? pulsoController;
  String? Function(BuildContext, String?)? pulsoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    presionsistolicaControllerValidator = _presionsistolicaControllerValidator;
    presiondiastolicaControllerValidator =
        _presiondiastolicaControllerValidator;
  }

  @override
  void dispose() {
    presionsistolicaFocusNode?.dispose();
    presionsistolicaController?.dispose();

    presiondiastolicaFocusNode?.dispose();
    presiondiastolicaController?.dispose();

    pulsoFocusNode?.dispose();
    pulsoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
