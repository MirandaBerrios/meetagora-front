import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool fingerPrintValidation = false;
  // Stores action output result for [Backend Call - API (refreshApi)] action in Login widget.
  ApiCallResponse? apiResult;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo no puede estar vacio';
    }

    if (!RegExp('\\b[A-Za-z0-9._%+-]+@(?:.*\\bduoc\\b.*|.*\\bduocuc\\b.*)\\b')
        .hasMatch(val)) {
      return 'Formato incorrecto';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo no puede estar vacio';
    }

    if (val.length < 6) {
      return 'Mínimo 6 caracteres';
    }
    if (val.length > 20) {
      return 'Máximo 20 caracteres';
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*\\d)(?=.*\\W).{6,20}\$').hasMatch(val)) {
      return 'Debe contener al menos una mayuscula, un número y un caracter especial.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (loginApi)] action in Button widget.
  ApiCallResponse? apiResultLogin;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
