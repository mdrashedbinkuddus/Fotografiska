import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateRightWidget extends StatefulWidget {
  const CreateRightWidget({Key? key}) : super(key: key);

  @override
  _CreateRightWidgetState createState() => _CreateRightWidgetState();
}

class _CreateRightWidgetState extends State<CreateRightWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  TextEditingController? nameInputController;
  TextEditingController? rightsHolderController;

  @override
  void initState() {
    super.initState();
    nameInputController = TextEditingController();
    rightsHolderController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    nameInputController?.dispose();
    rightsHolderController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4,
          sigmaY: 9,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xD60E151B),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Container(
                  width: 60,
                  height: 4,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 470,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        color: Color(0x5D000000),
                        offset: Offset(0, -2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Add Right',
                                style: FlutterFlowTheme.of(context).title2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Please fill out the details below to add a new artist',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Minion Pro Font',
                                      fontSize: 14,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                          child: TextFormField(
                            controller: nameInputController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Right Name',
                              labelStyle:
                                  FlutterFlowTheme.of(context).subtitle2,
                              hintText:
                                  'Enter the right name here..eg Copyright ',
                              hintStyle: FlutterFlowTheme.of(context).subtitle2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                          child: TextFormField(
                            controller: rightsHolderController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Rights Holder',
                              labelStyle:
                                  FlutterFlowTheme.of(context).subtitle2,
                              hintText: 'Enter the Rights Holder name here',
                              hintStyle: FlutterFlowTheme.of(context).subtitle2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'Right period',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        fontSize: 14,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xFF3737E6),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  if (kIsWeb) {
                                    final _datePicked1Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked1Date != null) {
                                      setState(
                                        () => datePicked1 = DateTime(
                                          _datePicked1Date.year,
                                          _datePicked1Date.month,
                                          _datePicked1Date.day,
                                        ),
                                      );
                                    }
                                  } else {
                                    await DatePicker.showDatePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked1 = date);
                                      },
                                      currentTime: getCurrentTimestamp,
                                      minTime: DateTime(0, 0, 0),
                                      locale: LocaleType.values.firstWhere(
                                        (l) =>
                                            l.name ==
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        orElse: () => LocaleType.en,
                                      ),
                                    );
                                  }
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 100, 0),
                                child: Text(
                                  'Start',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        fontSize: 16,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xFF3737E6),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  if (kIsWeb) {
                                    final _datePicked2Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked2Date != null) {
                                      setState(
                                        () => datePicked2 = DateTime(
                                          _datePicked2Date.year,
                                          _datePicked2Date.month,
                                          _datePicked2Date.day,
                                        ),
                                      );
                                    }
                                  } else {
                                    await DatePicker.showDatePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked2 = date);
                                      },
                                      currentTime: getCurrentTimestamp,
                                      minTime: DateTime(0, 0, 0),
                                      locale: LocaleType.values.firstWhere(
                                        (l) =>
                                            l.name ==
                                            FFLocalizations.of(context)
                                                .languageCode,
                                        orElse: () => LocaleType.en,
                                      ),
                                    );
                                  }
                                },
                              ),
                              Text(
                                'End',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Minion Pro Font',
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pop();
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  width: 110,
                                  height: 50,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Apotek',
                                        fontSize: 24,
                                        useGoogleFonts: false,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  final rightsListCreateData =
                                      createRightsListRecordData(
                                    rightsTitle: nameInputController!.text,
                                    rightsCreator: currentUserReference,
                                    createdOn: getCurrentTimestamp,
                                    isActive: true,
                                    rightsHolder: rightsHolderController!.text,
                                  );
                                  await RightsListRecord.collection
                                      .doc()
                                      .set(rightsListCreateData);
                                  context.pop();
                                },
                                text: 'Create Right',
                                options: FFButtonOptions(
                                  width: 170,
                                  height: 50,
                                  color:
                                      FlutterFlowTheme.of(context).primaryBlack,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Apotek',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 24,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 3,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
