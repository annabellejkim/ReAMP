import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'check_in_widget.dart' show CheckInWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class CheckInModel extends FlutterFlowModel<CheckInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SleepChoices widget.
  FormFieldController<List<String>>? sleepChoicesValueController;
  String? get sleepChoicesValue =>
      sleepChoicesValueController?.value?.firstOrNull;
  set sleepChoicesValue(String? val) =>
      sleepChoicesValueController?.value = val != null ? [val] : [];
  // State field(s) for MoodSlider widget.
  double? moodSliderValue;
  // State field(s) for EnergySlider widget.
  double? energySliderValue;
  // State field(s) for FocusSlider widget.
  double? focusSliderValue;
  // State field(s) for FatigueSlider widget.
  double? fatigueSliderValue;
  // State field(s) for SorenessSlider widget.
  double? sorenessSliderValue;
  // State field(s) for TrainedSwitch widget.
  bool? trainedSwitchValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CheckInsRecord>? latestcheckin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
