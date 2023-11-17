import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'asistencia_profesor_model.dart';
export 'asistencia_profesor_model.dart';

class AsistenciaProfesorWidget extends StatefulWidget {
  const AsistenciaProfesorWidget({
    Key? key,
    required this.subjectSection,
    required this.subjectCode,
    required this.dayId,
  }) : super(key: key);

  final String? subjectSection;
  final String? subjectCode;
  final int? dayId;

  @override
  _AsistenciaProfesorWidgetState createState() =>
      _AsistenciaProfesorWidgetState();
}

class _AsistenciaProfesorWidgetState extends State<AsistenciaProfesorWidget> {
  late AsistenciaProfesorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsistenciaProfesorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 295.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Registrar asistencia',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  'Para recibir el link de registro de clase , por favor presiona crear  asistencia, recibiras un correo con el link que deberás mostr ',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Proletarsk',
                        color: FlutterFlowTheme.of(context).primaryText,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResult3 = await AsistenciaProfesorApiCall.call(
                      url: FFAppState().apiUrlStatement,
                      tokenTeacher: FFAppState().token,
                      subjectCode: widget.subjectCode,
                      email: FFAppState().institutionalEmail,
                      dayId: widget.dayId,
                      subjectSection: widget.subjectSection,
                    );
                    if ((_model.apiResult3?.succeeded ?? true)) {
                      await actions.successNotification(
                        context,
                        'Se ha creado tu instancia de lista',
                        'Por favor revise su correo electronico',
                        10,
                        () async {},
                        () async {},
                      );
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Algo salio mal'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    }

                    setState(() {});
                  },
                  text: 'Crear asistencia',
                  icon: Icon(
                    Icons.receipt_long,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 54.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Proletarsk',
                          color: Colors.white,
                          useGoogleFonts: false,
                        ),
                    elevation: 4.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
