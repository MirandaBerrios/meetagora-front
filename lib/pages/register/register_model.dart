import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  String? _emailAddressController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    if (!RegExp('\\b[A-Za-z0-9._%+-]+@(?:.*\\bduoc\\b.*|.*\\bduocuc\\b.*)\\b')
        .hasMatch(val)) {
      return 'Formato invalido';
    }
    return null;
  }

  // State field(s) for nombreDeUsuario widget.
  FocusNode? nombreDeUsuarioFocusNode1;
  TextEditingController? nombreDeUsuarioController1;
  String? Function(BuildContext, String?)? nombreDeUsuarioController1Validator;
  String? _nombreDeUsuarioController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  String? _passwordController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
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

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode1;
  TextEditingController? passwordConfirmController1;
  late bool passwordConfirmVisibility1;
  String? Function(BuildContext, String?)? passwordConfirmController1Validator;
  String? _passwordConfirmController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'requerido';
    }

    return null;
  }

  // State field(s) for numeroTelefono widget.
  FocusNode? numeroTelefonoFocusNode1;
  TextEditingController? numeroTelefonoController1;
  String? Function(BuildContext, String?)? numeroTelefonoController1Validator;
  String? _numeroTelefonoController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'requerido';
    }

    if (!RegExp('^\\+\\d{11}\$').hasMatch(val)) {
      return 'Debe contener + y 10 números';
    }
    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (registApi)] action in Button widget.
  ApiCallResponse? apiResult1;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressController2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  String? _emailAddressController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    if (!RegExp('/\\b[A-Za-z0-9._%+-]+@(?:.*\\bprofesor.duoc.cl\\b.*)\\b/gm')
        .hasMatch(val)) {
      return 'El correo debe pertenecer a un profesor de Duoc Uc';
    }
    return null;
  }

  // State field(s) for nombreDeUsuario widget.
  FocusNode? nombreDeUsuarioFocusNode2;
  TextEditingController? nombreDeUsuarioController2;
  String? Function(BuildContext, String?)? nombreDeUsuarioController2Validator;
  String? _nombreDeUsuarioController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;
  String? _passwordController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
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

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode2;
  TextEditingController? passwordConfirmController2;
  late bool passwordConfirmVisibility2;
  String? Function(BuildContext, String?)? passwordConfirmController2Validator;
  String? _passwordConfirmController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'requerido';
    }

    return null;
  }

  // State field(s) for numeroTelefono widget.
  FocusNode? numeroTelefonoFocusNode2;
  TextEditingController? numeroTelefonoController2;
  String? Function(BuildContext, String?)? numeroTelefonoController2Validator;
  String? _numeroTelefonoController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    if (!RegExp('^\\+\\d{11}\$').hasMatch(val)) {
      return 'Debe contener + y 10 números';
    }
    return null;
  }

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (registApi)] action in Button widget.
  ApiCallResponse? apiResult2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressController1Validator = _emailAddressController1Validator;
    nombreDeUsuarioController1Validator = _nombreDeUsuarioController1Validator;
    passwordVisibility1 = false;
    passwordController1Validator = _passwordController1Validator;
    passwordConfirmVisibility1 = false;
    passwordConfirmController1Validator = _passwordConfirmController1Validator;
    numeroTelefonoController1Validator = _numeroTelefonoController1Validator;
    emailAddressController2Validator = _emailAddressController2Validator;
    nombreDeUsuarioController2Validator = _nombreDeUsuarioController2Validator;
    passwordVisibility2 = false;
    passwordController2Validator = _passwordController2Validator;
    passwordConfirmVisibility2 = false;
    passwordConfirmController2Validator = _passwordConfirmController2Validator;
    numeroTelefonoController2Validator = _numeroTelefonoController2Validator;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();

    nombreDeUsuarioFocusNode1?.dispose();
    nombreDeUsuarioController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordController1?.dispose();

    passwordConfirmFocusNode1?.dispose();
    passwordConfirmController1?.dispose();

    numeroTelefonoFocusNode1?.dispose();
    numeroTelefonoController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();

    nombreDeUsuarioFocusNode2?.dispose();
    nombreDeUsuarioController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordController2?.dispose();

    passwordConfirmFocusNode2?.dispose();
    passwordConfirmController2?.dispose();

    numeroTelefonoFocusNode2?.dispose();
    numeroTelefonoController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
