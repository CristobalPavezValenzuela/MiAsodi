import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nombres widget.
  FocusNode? nombresFocusNode;
  TextEditingController? nombresController;
  String? Function(BuildContext, String?)? nombresControllerValidator;
  String? _nombresControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 30) {
      return 'Solo se puede registrar 30 carácteres';
    }

    return null;
  }

  // State field(s) for apaterno widget.
  FocusNode? apaternoFocusNode;
  TextEditingController? apaternoController;
  String? Function(BuildContext, String?)? apaternoControllerValidator;
  String? _apaternoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 15) {
      return 'Maximum 15 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for amaterno widget.
  FocusNode? amaternoFocusNode;
  TextEditingController? amaternoController;
  String? Function(BuildContext, String?)? amaternoControllerValidator;
  String? _amaternoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 15) {
      return 'Maximum 15 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutController;
  String? Function(BuildContext, String?)? rutControllerValidator;
  String? _rutControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Numerocontacto widget.
  FocusNode? numerocontactoFocusNode;
  TextEditingController? numerocontactoController;
  String? Function(BuildContext, String?)? numerocontactoControllerValidator;
  String? _numerocontactoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length > 9) {
      return 'Maximum 9 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for correo_electronico widget.
  FocusNode? correoElectronicoFocusNode;
  TextEditingController? correoElectronicoController;
  String? Function(BuildContext, String?)? correoElectronicoControllerValidator;
  String? _correoElectronicoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaControllerValidator;
  String? _contrasenaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for confirmacontrasena widget.
  FocusNode? confirmacontrasenaFocusNode;
  TextEditingController? confirmacontrasenaController;
  late bool confirmacontrasenaVisibility;
  String? Function(BuildContext, String?)?
      confirmacontrasenaControllerValidator;
  String? _confirmacontrasenaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nombresControllerValidator = _nombresControllerValidator;
    apaternoControllerValidator = _apaternoControllerValidator;
    amaternoControllerValidator = _amaternoControllerValidator;
    rutControllerValidator = _rutControllerValidator;
    numerocontactoControllerValidator = _numerocontactoControllerValidator;
    correoElectronicoControllerValidator =
        _correoElectronicoControllerValidator;
    contrasenaVisibility = false;
    contrasenaControllerValidator = _contrasenaControllerValidator;
    confirmacontrasenaVisibility = false;
    confirmacontrasenaControllerValidator =
        _confirmacontrasenaControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombresFocusNode?.dispose();
    nombresController?.dispose();

    apaternoFocusNode?.dispose();
    apaternoController?.dispose();

    amaternoFocusNode?.dispose();
    amaternoController?.dispose();

    rutFocusNode?.dispose();
    rutController?.dispose();

    numerocontactoFocusNode?.dispose();
    numerocontactoController?.dispose();

    correoElectronicoFocusNode?.dispose();
    correoElectronicoController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaController?.dispose();

    confirmacontrasenaFocusNode?.dispose();
    confirmacontrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
