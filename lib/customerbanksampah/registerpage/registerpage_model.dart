import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registerpage_widget.dart' show RegisterpageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterpageModel extends FlutterFlowModel<RegisterpageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Nama pengguna tidak valid';
    }
    return null;
  }

  // State field(s) for nik widget.
  FocusNode? nikFocusNode;
  TextEditingController? nikTextController;
  String? Function(BuildContext, String?)? nikTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email tidak valid';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  String? _passwordTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    if (val.length < 8) {
      return 'Kata Sandi Minimal 8 Karakter';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  String? _passwordTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    if (val.length < 8) {
      return 'Kata Sandi Minimal 8 Karakter';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '#############');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    return null;
  }

  // State field(s) for addres widget.
  FocusNode? addresFocusNode;
  TextEditingController? addresTextController;
  String? Function(BuildContext, String?)? addresTextControllerValidator;
  String? _addresTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wajib di isi';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (registercustomer)] action in Button widget.
  ApiCallResponse? register;

  @override
  void initState(BuildContext context) {
    usernameTextControllerValidator = _usernameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility1 = false;
    passwordTextController1Validator = _passwordTextController1Validator;
    passwordVisibility2 = false;
    passwordTextController2Validator = _passwordTextController2Validator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    addresTextControllerValidator = _addresTextControllerValidator;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    nikFocusNode?.dispose();
    nikTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    addresFocusNode?.dispose();
    addresTextController?.dispose();
  }
}
