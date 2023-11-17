import '/components/messages/messages_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'mapas_model.dart';
export 'mapas_model.dart';

class MapasWidget extends StatefulWidget {
  const MapasWidget({
    Key? key,
    required this.subjectName,
    required this.classroomNumber,
    required this.subjectSection,
    required this.subjectCode,
    required this.subjectId,
    required this.dayId,
  }) : super(key: key);

  final String? subjectName;
  final String? classroomNumber;
  final String? subjectSection;
  final String? subjectCode;
  final String? subjectId;
  final int? dayId;

  @override
  _MapasWidgetState createState() => _MapasWidgetState();
}

class _MapasWidgetState extends State<MapasWidget> {
  late MapasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapasModel());
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
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () => _model.unfocusNode.canRequestFocus
                      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                      : FocusScope.of(context).unfocus(),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      child: MessagesWidget(
                        subjectName: widget.subjectName!,
                        classroomNumber: widget.classroomNumber!,
                        subjectCode: widget.subjectCode!,
                        subjectSection: widget.subjectSection!,
                        subjectId: widget.subjectId!,
                      ),
                    ),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          elevation: 8.0,
          child: Icon(
            Icons.message,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional(0.0, -1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: FlutterFlowExpandedImageView(
                          image: OctoImage(
                            placeholderBuilder: OctoPlaceholder.blurHash(
                              'LIB@J^ELv~Ey4nbbxZnj|@SNxHso',
                            ),
                            image: NetworkImage(
                              '${FFAppState().apiUrlStatement}/meetagora-services/gcp/classroomImages/classroom-${widget.classroomNumber}.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                          allowRotation: false,
                          tag:
                              '${FFAppState().apiUrlStatement}/meetagora-services/gcp/classroomImages/classroom-${widget.classroomNumber}.png',
                          useHeroAnimation: true,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag:
                        '${FFAppState().apiUrlStatement}/meetagora-services/gcp/classroomImages/classroom-${widget.classroomNumber}.png',
                    transitionOnUserGestures: true,
                    child: OctoImage(
                      placeholderBuilder: OctoPlaceholder.blurHash(
                        'LIB@J^ELv~Ey4nbbxZnj|@SNxHso',
                      ),
                      image: NetworkImage(
                        '${FFAppState().apiUrlStatement}/meetagora-services/gcp/classroomImages/classroom-${widget.classroomNumber}.png',
                      ),
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, -0.87),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x520E151B),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'AssistTeacher',
                            queryParameters: {
                              'dayId': serializeParam(
                                widget.dayId,
                                ParamType.int,
                              ),
                              'subjectCode': serializeParam(
                                widget.subjectCode,
                                ParamType.String,
                              ),
                              'subjectSection': serializeParam(
                                widget.subjectSection,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Asistencia',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Proletarsk',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: false,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ],
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
