import '/flutter_flow/flutter_flow_util.dart';
import 'lupapassword_widget.dart' show LupapasswordWidget;
import 'package:flutter/material.dart';

class LupapasswordModel extends FlutterFlowModel<LupapasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for verifemail widget.
  FocusNode? verifemailFocusNode;
  TextEditingController? verifemailTextController;
  String? Function(BuildContext, String?)? verifemailTextControllerValidator;
  String? _verifemailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email tidak valid';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    verifemailTextControllerValidator = _verifemailTextControllerValidator;
  }

  @override
  void dispose() {
    verifemailFocusNode?.dispose();
    verifemailTextController?.dispose();
  }
}
