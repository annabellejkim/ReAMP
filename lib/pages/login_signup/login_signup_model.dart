import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_signup_widget.dart' show LoginSignupWidget;
import 'package:flutter/material.dart';

class LoginSignupModel extends FlutterFlowModel<LoginSignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for gmail widget.
  FocusNode? gmailFocusNode;
  TextEditingController? gmailTextController;
  String? Function(BuildContext, String?)? gmailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirmpw widget.
  FocusNode? confirmpwFocusNode;
  TextEditingController? confirmpwTextController;
  late bool confirmpwVisibility;
  String? Function(BuildContext, String?)? confirmpwTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmpwVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    gmailFocusNode?.dispose();
    gmailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmpwFocusNode?.dispose();
    confirmpwTextController?.dispose();
  }
}
