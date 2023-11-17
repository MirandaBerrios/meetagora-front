import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'send_message_widget.dart' show SendMessageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SendMessageModel extends FlutterFlowModel<SendMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownProfesor widget.
  String? dropDownProfesorValue;
  FormFieldController<String>? dropDownProfesorValueController;
  // State field(s) for DropDownAlert widget.
  String? dropDownAlertValue;
  FormFieldController<String>? dropDownAlertValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioController1;
  String? Function(BuildContext, String?)? shortBioController1Validator;
  // Stores action output result for [Backend Call - API (createAnnouncementApi)] action in Button widget.
  ApiCallResponse? apiResult;
  // State field(s) for DropDownAlumno widget.
  String? dropDownAlumnoValue;
  FormFieldController<String>? dropDownAlumnoValueController;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioController2;
  String? Function(BuildContext, String?)? shortBioController2Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode3;
  TextEditingController? shortBioController3;
  String? Function(BuildContext, String?)? shortBioController3Validator;
  // Stores action output result for [Backend Call - API (createAnnouncementApi)] action in Button widget.
  ApiCallResponse? apiResultALumno;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioController2?.dispose();

    shortBioFocusNode3?.dispose();
    shortBioController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
