import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateTaskWidget extends StatefulWidget {
  const CreateTaskWidget({Key? key}) : super(key: key);

  @override
  _CreateTaskWidgetState createState() => _CreateTaskWidgetState();
}

class _CreateTaskWidgetState extends State<CreateTaskWidget> {
  DateTime? datePicked;
  TextEditingController? textController1;
  TextEditingController? textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Add Task',
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
                      'Fill out the details below to add a new task.',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: TextFormField(
                  controller: textController1,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Task Name',
                    labelStyle: FlutterFlowTheme.of(context).subtitle2,
                    hintText: 'Enter your task here....',
                    hintStyle: FlutterFlowTheme.of(context).subtitle2,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Details',
                    labelStyle: FlutterFlowTheme.of(context).subtitle2,
                    hintText: 'Enter a description here...',
                    hintStyle: FlutterFlowTheme.of(context).subtitle2,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: InkWell(
                  onTap: () async {
                    if (kIsWeb) {
                      final _datePickedDate = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: getCurrentTimestamp,
                        lastDate: DateTime(2050),
                      );

                      TimeOfDay? _datePickedTime;
                      if (_datePickedDate != null) {
                        _datePickedTime = await showTimePicker(
                          context: context,
                          initialTime:
                              TimeOfDay.fromDateTime(getCurrentTimestamp),
                        );
                      }

                      if (_datePickedDate != null && _datePickedTime != null) {
                        setState(
                          () => datePicked = DateTime(
                            _datePickedDate.year,
                            _datePickedDate.month,
                            _datePickedDate.day,
                            _datePickedTime!.hour,
                            _datePickedTime.minute,
                          ),
                        );
                      }
                    } else {
                      await DatePicker.showDateTimePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked = date);
                        },
                        currentTime: getCurrentTimestamp,
                        minTime: getCurrentTimestamp,
                        locale: LocaleType.values.firstWhere(
                          (l) =>
                              l.name ==
                              FFLocalizations.of(context).languageCode,
                          orElse: () => LocaleType.en,
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              dateTimeFormat('MMMEd', datePicked),
                              'Select a Date / Time',
                            ),
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Text(
                              dateTimeFormat('jm', datePicked),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
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
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Minion Pro Font',
                              color: FlutterFlowTheme.of(context).primaryText,
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
                        final toDoListCreateData = createToDoListRecordData(
                          toDoName: textController1!.text,
                          toDoDescription: textController2!.text,
                          toDoDate: datePicked,
                          user: currentUserReference,
                          toDoState: false,
                        );
                        await ToDoListRecord.collection
                            .doc()
                            .set(toDoListCreateData);
                        context.pop();
                      },
                      text: 'CreateTask',
                      options: FFButtonOptions(
                        width: 170,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle1.override(
                                  fontFamily: 'Minion Pro Font',
                                  color: Color(0xFF3737E6),
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
    );
  }
}
