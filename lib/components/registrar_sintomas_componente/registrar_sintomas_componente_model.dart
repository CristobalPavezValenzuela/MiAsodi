import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_sintomas_componente_widget.dart'
    show RegistrarSintomasComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarSintomasComponenteModel
    extends FlutterFlowModel<RegistrarSintomasComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for seleccionaSintomas widget.
  String? seleccionaSintomasValue;
  FormFieldController<String>? seleccionaSintomasValueController;
  // State field(s) for Sintoma widget.
  FocusNode? sintomaFocusNode;
  TextEditingController? sintomaController;
  String? Function(BuildContext, String?)? sintomaControllerValidator;
  String? _sintomaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sintomaControllerValidator = _sintomaControllerValidator;
  }

  @override
  void dispose() {
    sintomaFocusNode?.dispose();
    sintomaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
