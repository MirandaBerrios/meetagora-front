import '/components/asistencia_alumno/asistencia_alumno_widget.dart';
import '/components/asistencia_profesor/asistencia_profesor_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'assist_teacher_widget.dart' show AssistTeacherWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssistTeacherModel extends FlutterFlowModel<AssistTeacherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for asistenciaProfesor component.
  late AsistenciaProfesorModel asistenciaProfesorModel;
  // Model for asistenciaAlumno component.
  late AsistenciaAlumnoModel asistenciaAlumnoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    asistenciaProfesorModel =
        createModel(context, () => AsistenciaProfesorModel());
    asistenciaAlumnoModel = createModel(context, () => AsistenciaAlumnoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    asistenciaProfesorModel.dispose();
    asistenciaAlumnoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
