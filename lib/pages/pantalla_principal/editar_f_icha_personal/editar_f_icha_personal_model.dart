import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_f_icha_personal_widget.dart' show EditarFIchaPersonalWidget;
import 'package:flutter/material.dart';

class EditarFIchaPersonalModel
    extends FlutterFlowModel<EditarFIchaPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nombres widget.
  FocusNode? nombresFocusNode;
  TextEditingController? nombresController;
  String? Function(BuildContext, String?)? nombresControllerValidator;
  String? _nombresControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for apellido_paterno widget.
  FocusNode? apellidoPaternoFocusNode;
  TextEditingController? apellidoPaternoController;
  String? Function(BuildContext, String?)? apellidoPaternoControllerValidator;
  String? _apellidoPaternoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for apellido_materno widget.
  FocusNode? apellidoMaternoFocusNode;
  TextEditingController? apellidoMaternoController;
  String? Function(BuildContext, String?)? apellidoMaternoControllerValidator;
  String? _apellidoMaternoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutController;
  String? Function(BuildContext, String?)? rutControllerValidator;
  String? _rutControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  String? _edadControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 2) {
      return 'Minimo digite 2 numeros';
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
      return 'Minimo son nueve digitos';
    }

    return null;
  }

  // State field(s) for hospital_perteneciente widget.
  FocusNode? hospitalPertenecienteFocusNode1;
  TextEditingController? hospitalPertenecienteController1;
  String? Function(BuildContext, String?)?
      hospitalPertenecienteController1Validator;
  String? _hospitalPertenecienteController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for hospital_perteneciente widget.
  FocusNode? hospitalPertenecienteFocusNode2;
  TextEditingController? hospitalPertenecienteController2;
  String? Function(BuildContext, String?)?
      hospitalPertenecienteController2Validator;
  String? _hospitalPertenecienteController2Validator(
      BuildContext context, String? val) {
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
    nombresControllerValidator = _nombresControllerValidator;
    apellidoPaternoControllerValidator = _apellidoPaternoControllerValidator;
    apellidoMaternoControllerValidator = _apellidoMaternoControllerValidator;
    rutControllerValidator = _rutControllerValidator;
    edadControllerValidator = _edadControllerValidator;
    estaturaControllerValidator = _estaturaControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    hospitalPertenecienteController1Validator =
        _hospitalPertenecienteController1Validator;
    hospitalPertenecienteController2Validator =
        _hospitalPertenecienteController2Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombresFocusNode?.dispose();
    nombresController?.dispose();

    apellidoPaternoFocusNode?.dispose();
    apellidoPaternoController?.dispose();

    apellidoMaternoFocusNode?.dispose();
    apellidoMaternoController?.dispose();

    rutFocusNode?.dispose();
    rutController?.dispose();

    edadFocusNode?.dispose();
    edadController?.dispose();

    estaturaFocusNode?.dispose();
    estaturaController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    hospitalPertenecienteFocusNode1?.dispose();
    hospitalPertenecienteController1?.dispose();

    hospitalPertenecienteFocusNode2?.dispose();
    hospitalPertenecienteController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
