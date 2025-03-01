import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'temp_account_widget.dart' show TempAccountWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TempAccountModel extends FlutterFlowModel<TempAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField_Create_Email widget.
  FocusNode? textFieldCreateEmailFocusNode;
  TextEditingController? textFieldCreateEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldCreateEmailTextControllerValidator;
  // State field(s) for TextField_Create_PW widget.
  FocusNode? textFieldCreatePWFocusNode;
  TextEditingController? textFieldCreatePWTextController;
  late bool textFieldCreatePWVisibility;
  String? Function(BuildContext, String?)?
      textFieldCreatePWTextControllerValidator;
  // State field(s) for TextField_Login_Email widget.
  FocusNode? textFieldLoginEmailFocusNode;
  TextEditingController? textFieldLoginEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldLoginEmailTextControllerValidator;
  // State field(s) for TextField_Login_PW widget.
  FocusNode? textFieldLoginPWFocusNode;
  TextEditingController? textFieldLoginPWTextController;
  late bool textFieldLoginPWVisibility;
  String? Function(BuildContext, String?)?
      textFieldLoginPWTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldCreatePWVisibility = false;
    textFieldLoginPWVisibility = false;
  }

  @override
  void dispose() {
    textFieldCreateEmailFocusNode?.dispose();
    textFieldCreateEmailTextController?.dispose();

    textFieldCreatePWFocusNode?.dispose();
    textFieldCreatePWTextController?.dispose();

    textFieldLoginEmailFocusNode?.dispose();
    textFieldLoginEmailTextController?.dispose();

    textFieldLoginPWFocusNode?.dispose();
    textFieldLoginPWTextController?.dispose();
  }
}
