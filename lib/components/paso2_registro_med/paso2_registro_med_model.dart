import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'paso2_registro_med_widget.dart' show Paso2RegistroMedWidget;
import 'package:flutter/material.dart';

class Paso2RegistroMedModel extends FlutterFlowModel<Paso2RegistroMedWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for NombreMed widget.
  FocusNode? nombreMedFocusNode;
  TextEditingController? nombreMedController;
  String? Function(BuildContext, String?)? nombreMedControllerValidator;
  String? _nombreMedControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for TipoPresentacion widget.
  String? tipoPresentacionValue;
  FormFieldController<String>? tipoPresentacionValueController;
  // State field(s) for Dosis widget.
  int? dosisValue;
  FormFieldController<int>? dosisValueController;
  // State field(s) for Frecuencia widget.
  int? frecuenciaValue;
  FormFieldController<int>? frecuenciaValueController;
  // State field(s) for PorcuantosDias widget.
  int? porcuantosDiasValue;
  FormFieldController<int>? porcuantosDiasValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nombreMedControllerValidator = _nombreMedControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nombreMedFocusNode?.dispose();
    nombreMedController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
