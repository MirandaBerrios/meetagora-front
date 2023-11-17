import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'credentials_model.dart';
export 'credentials_model.dart';

class CredentialsWidget extends StatefulWidget {
  const CredentialsWidget({
    Key? key,
    String? credencialRut,
  })  : this.credencialRut = credencialRut ?? '',
        super(key: key);

  final String credencialRut;

  @override
  _CredentialsWidgetState createState() => _CredentialsWidgetState();
}

class _CredentialsWidgetState extends State<CredentialsWidget> {
  late CredentialsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CredentialsModel());
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
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: BarcodeWidget(
                data: widget.credencialRut != null && widget.credencialRut != ''
                    ? widget.credencialRut
                    : '123456789',
                barcode: Barcode.code128(),
                width: 300.0,
                height: 150.0,
                color: FlutterFlowTheme.of(context).primaryText,
                backgroundColor: Colors.transparent,
                errorBuilder: (_context, _error) => SizedBox(
                  width: 300.0,
                  height: 150.0,
                ),
                drawText: false,
              ),
            ),
          ),
          Text(
            FFAppState().institutionalEmail,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Proletarsk',
                  fontSize: 25.0,
                  useGoogleFonts: false,
                ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
              child: Text(
                'Con este código podrás acceder a través de los torniquetes de tu sede',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
