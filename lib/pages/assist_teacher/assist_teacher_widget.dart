import '/components/asistencia_alumno/asistencia_alumno_widget.dart';
import '/components/asistencia_profesor/asistencia_profesor_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assist_teacher_model.dart';
export 'assist_teacher_model.dart';

class AssistTeacherWidget extends StatefulWidget {
  const AssistTeacherWidget({
    Key? key,
    required this.dayId,
    required this.subjectCode,
    required this.subjectSection,
  }) : super(key: key);

  final int? dayId;
  final String? subjectCode;
  final String? subjectSection;

  @override
  _AssistTeacherWidgetState createState() => _AssistTeacherWidgetState();
}

class _AssistTeacherWidgetState extends State<AssistTeacherWidget> {
  late AssistTeacherModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssistTeacherModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                'homePage',
                queryParameters: {
                  'dayOfWeek': serializeParam(
                    widget.dayId?.toString(),
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            'MeetAgorA',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Space Age',
                  fontSize: 30.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Builder(
          builder: (context) {
            if (FFAppState().isTeacher == '1') {
              return wrapWithModel(
                model: _model.asistenciaProfesorModel,
                updateCallback: () => setState(() {}),
                child: AsistenciaProfesorWidget(
                  subjectSection: widget.subjectSection!,
                  subjectCode: widget.subjectCode!,
                  dayId: widget.dayId!,
                ),
              );
            } else {
              return wrapWithModel(
                model: _model.asistenciaAlumnoModel,
                updateCallback: () => setState(() {}),
                child: AsistenciaAlumnoWidget(),
              );
            }
          },
        ),
      ),
    );
  }
}
