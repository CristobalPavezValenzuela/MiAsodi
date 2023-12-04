import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_f_icha_inicio_widget.dart' show EditarFIchaInicioWidget;
import 'package:flutter/material.dart';

class EditarFIchaInicioModel extends FlutterFlowModel<EditarFIchaInicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  String? _edadControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 2) {
      return 'Son minimo dos caracteres';
    }

    return null;
  }

  // State field(s) for estatura widget.
  FocusNode? estaturaFocusNode;
  TextEditingController? estaturaController;
  String? Function(BuildContext, String?)? estaturaControllerValidator;
  String? _estaturaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 9) {
      return 'Son minimo 9 digitos';
    }

    return null;
  }

  // State field(s) for hospital_perteneciente widget.
  FocusNode? hospitalPertenecienteFocusNode;
  TextEditingController? hospitalPertenecienteController;
  String? Function(BuildContext, String?)?
      hospitalPertenecienteControllerValidator;
  String? _hospitalPertenecienteControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for alergias widget.
  FocusNode? alergiasFocusNode;
  TextEditingController? alergiasController;
  String? Function(BuildContext, String?)? alergiasControllerValidator;
  String? _alergiasControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for CheckTrasplantado widget.
  bool? checkTrasplantadoValue;
  // State field(s) for CheckDializado widget.
  bool? checkDializadoValue;
  // State field(s) for Checkpredialisis widget.
  bool? checkpredialisisValue;
  // State field(s) for Checkhemodialisis widget.
  bool? checkhemodialisisValue;
  // State field(s) for Checkperitoneodialisis widget.
  bool? checkperitoneodialisisValue;
  // State field(s) for CheckDiabetes widget.
  bool? checkDiabetesValue;
  // State field(s) for ChecHipertension widget.
  bool? checHipertensionValue;
  // State field(s) for ChecEnfermedad widget.
  bool? checEnfermedadValue;
  // State field(s) for CheckboxAccidente widget.
  bool? checkboxAccidenteValue;
  // State field(s) for CheckboxTrombosis widget.
  bool? checkboxTrombosisValue;
  // State field(s) for CheckEpilepsia widget.
  bool? checkEpilepsiaValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    edadControllerValidator = _edadControllerValidator;
    estaturaControllerValidator = _estaturaControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    hospitalPertenecienteControllerValidator =
        _hospitalPertenecienteControllerValidator;
    alergiasControllerValidator = _alergiasControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    edadFocusNode?.dispose();
    edadController?.dispose();

    estaturaFocusNode?.dispose();
    estaturaController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    hospitalPertenecienteFocusNode?.dispose();
    hospitalPertenecienteController?.dispose();

    alergiasFocusNode?.dispose();
    alergiasController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
