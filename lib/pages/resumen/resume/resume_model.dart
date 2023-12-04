import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'resume_widget.dart' show ResumeWidget;
import 'package:flutter/material.dart';

class ResumeModel extends FlutterFlowModel<ResumeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mes widget.
  String? mesValue;
  FormFieldController<String>? mesValueController;
  // State field(s) for ano widget.
  String? anoValue;
  FormFieldController<String>? anoValueController;
  // State field(s) for mesPeso widget.
  String? mesPesoValue1;
  FormFieldController<String>? mesPesoValueController1;
  // State field(s) for anoPeso widget.
  String? anoPesoValue1;
  FormFieldController<String>? anoPesoValueController1;
  // State field(s) for mesPeso widget.
  String? mesPesoValue2;
  FormFieldController<String>? mesPesoValueController2;
  // State field(s) for anoPeso widget.
  String? anoPesoValue2;
  FormFieldController<String>? anoPesoValueController2;

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
