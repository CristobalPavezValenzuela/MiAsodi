import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'resumen_del_mes_widget.dart' show ResumenDelMesWidget;
import 'package:flutter/material.dart';

class ResumenDelMesModel extends FlutterFlowModel<ResumenDelMesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mes widget.
  String? mesValue;
  FormFieldController<String>? mesValueController;
  // State field(s) for ano widget.
  String? anoValue;
  FormFieldController<String>? anoValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
