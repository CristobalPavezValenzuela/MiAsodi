import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_citas_medicas_componente_widget.dart'
    show RegistrarCitasMedicasComponenteWidget;
import 'package:flutter/material.dart';

class RegistrarCitasMedicasComponenteModel
    extends FlutterFlowModel<RegistrarCitasMedicasComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  DateTime? datePicked;
  // State field(s) for campomotivo widget.
  FocusNode? campomotivoFocusNode;
  TextEditingController? campomotivoController;
  String? Function(BuildContext, String?)? campomotivoControllerValidator;
  String? _campomotivoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for nombrecentromedico widget.
  FocusNode? nombrecentromedicoFocusNode;
  TextEditingController? nombrecentromedicoController;
  String? Function(BuildContext, String?)?
      nombrecentromedicoControllerValidator;
  String? _nombrecentromedicoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for nombredoctor widget.
  FocusNode? nombredoctorFocusNode;
  TextEditingController? nombredoctorController;
  String? Function(BuildContext, String?)? nombredoctorControllerValidator;
  String? _nombredoctorControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    campomotivoControllerValidator = _campomotivoControllerValidator;
    nombrecentromedicoControllerValidator =
        _nombrecentromedicoControllerValidator;
    nombredoctorControllerValidator = _nombredoctorControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    campomotivoFocusNode?.dispose();
    campomotivoController?.dispose();

    nombrecentromedicoFocusNode?.dispose();
    nombrecentromedicoController?.dispose();

    nombredoctorFocusNode?.dispose();
    nombredoctorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
