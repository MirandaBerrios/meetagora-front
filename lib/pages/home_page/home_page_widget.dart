import '/backend/api_requests/api_calls.dart';
import '/components/credentials/credentials_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    String? dayOfWeek,
  })  : this.dayOfWeek = dayOfWeek ?? '1',
        super(key: key);

  final String dayOfWeek;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      setState(() {
        _model.currentDay = DateTime.now().weekday;
        ;
        _model.nameOfCurrentDay = () {
          if (_model.currentDay == 1) {
            return 'Lunes';
          } else if (_model.currentDay == 2) {
            return 'Martes';
          } else if (_model.currentDay == 3) {
            return 'Miércoles';
          } else if (_model.currentDay == 4) {
            return 'Jueves';
          } else if (_model.currentDay == 5) {
            return 'Viernes';
          } else if (_model.currentDay == 6) {
            return 'Sábado';
          } else {
            return 'Domingo';
          }
        }();
        _model.currentLocation = currentUserLocationValue;
      });
      _model.apiResultzr1 = await UpdateLocationCall.call(
        token: FFAppState().token,
        url: FFAppState().apiUrlStatement,
        location: currentUserLocationValue?.toString(),
      );
      if ((_model.apiResultzr1?.succeeded ?? true)) {
        return;
      }

      return;
    });
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () => _model.unfocusNode.canRequestFocus
                        ? FocusScope.of(context)
                            .requestFocus(_model.unfocusNode)
                        : FocusScope.of(context).unfocus(),
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        child: CredentialsWidget(
                          credencialRut: FFAppState().rut,
                        ),
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.credit_card,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Text(
                'MeetAgorA',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Space Age',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 30.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Text(
                            FFAppState().nickname,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).tertiary
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, -1.0),
                                end: AlignmentDirectional(-1.0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('profile');
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    '${FFAppState().apiUrlStatement}/meetagora-services/gcp/images/${FFAppState().profileImage}',
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.8,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Container(
                                height: 40.0,
                                constraints: BoxConstraints(
                                  maxWidth: 200.0,
                                ),
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(-1.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    _model.nameOfCurrentDay,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Proletarsk',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(GetAllSubjectApiCall.call(
                                    token: FFAppState().token,
                                    url: FFAppState().apiUrlStatement,
                                  )))
                            .future,
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final listViewGetAllSubjectApiResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final item = getJsonField(
                                listViewGetAllSubjectApiResponse.jsonBody,
                                r'''$.responseBody[*]''',
                              ).toList();
                              return RefreshIndicator(
                                onRefresh: () async {
                                  setState(
                                      () => _model.apiRequestCompleter = null);
                                  await _model.waitForApiRequestCompleted();
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: item.length,
                                  itemBuilder: (context, itemIndex) {
                                    final itemItem = item[itemIndex];
                                    return Visibility(
                                      visible: '${getJsonField(
                                            itemItem,
                                            r'''$.dayId''',
                                          ).toString()}' ==
                                          _model.currentDay.toString(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: GridView(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 10.0,
                                              childAspectRatio: 1.0,
                                            ),
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 1.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Text(
                                                        getJsonField(
                                                          itemItem,
                                                          r'''$.startAt''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Text(
                                                      getJsonField(
                                                        itemItem,
                                                        r'''$.subjectName''',
                                                      ).toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Sala: ${getJsonField(
                                                      itemItem,
                                                      r'''$.classroomNumber''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            'Mapas',
                                                            queryParameters: {
                                                              'subjectName':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$.subjectName''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'classroomNumber':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$.classroomNumber''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'subjectSection':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$.subjectSection''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'subjectCode':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$.subjectCode''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'subjectId':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  itemItem,
                                                                  r'''$.subjectId''',
                                                                ).toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'dayId':
                                                                  serializeParam(
                                                                _model
                                                                    .currentDay,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: '',
                                                        icon: Icon(
                                                          Icons
                                                              .message_outlined,
                                                          size: 20.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Proletarsk',
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 1.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Text(
                                                        getJsonField(
                                                          itemItem,
                                                          r'''$.endAt''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
