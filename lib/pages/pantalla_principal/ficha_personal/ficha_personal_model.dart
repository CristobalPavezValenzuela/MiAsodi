import '/flutter_flow/flutter_flow_util.dart';
import 'ficha_personal_widget.dart' show FichaPersonalWidget;
import 'package:flutter/material.dart';

class FichaPersonalModel extends FlutterFlowModel<FichaPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
