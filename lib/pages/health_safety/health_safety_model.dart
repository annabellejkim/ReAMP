import '/components/safety_section_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'health_safety_widget.dart' show HealthSafetyWidget;
import 'package:flutter/material.dart';

class HealthSafetyModel extends FlutterFlowModel<HealthSafetyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SafetySection.
  late SafetySectionModel safetySectionModel1;
  // Model for SafetySection.
  late SafetySectionModel safetySectionModel2;
  // Model for SafetySection.
  late SafetySectionModel safetySectionModel3;
  // Model for SafetySection.
  late SafetySectionModel safetySectionModel4;

  @override
  void initState(BuildContext context) {
    safetySectionModel1 = createModel(context, () => SafetySectionModel());
    safetySectionModel2 = createModel(context, () => SafetySectionModel());
    safetySectionModel3 = createModel(context, () => SafetySectionModel());
    safetySectionModel4 = createModel(context, () => SafetySectionModel());
  }

  @override
  void dispose() {
    safetySectionModel1.dispose();
    safetySectionModel2.dispose();
    safetySectionModel3.dispose();
    safetySectionModel4.dispose();
  }
}
