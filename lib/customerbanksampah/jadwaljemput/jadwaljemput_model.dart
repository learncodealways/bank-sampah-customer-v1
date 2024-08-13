import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'jadwaljemput_widget.dart' show JadwaljemputWidget;
import 'package:flutter/material.dart';

class JadwaljemputModel extends FlutterFlowModel<JadwaljemputWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (createschedule)] action in Button widget.
  ApiCallResponse? createschedule;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
