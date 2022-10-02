import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/create_artist_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateExhibitionsWidget extends StatefulWidget {
  const CreateExhibitionsWidget({
    Key? key,
    this.currentAssetRef,
  }) : super(key: key);

  final DocumentReference? currentAssetRef;

  @override
  _CreateExhibitionsWidgetState createState() =>
      _CreateExhibitionsWidgetState();
}

class _CreateExhibitionsWidgetState extends State<CreateExhibitionsWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  String uploadedFileUrl = '';
  TextEditingController? exhibiNameFieldController;
  TextEditingController? exhibiSubFieldController;
  TextEditingController? assetDescriptionFieldController;
  String? dropDownValue;
  ExhibitionListRecord? assetCreatedRef;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    assetDescriptionFieldController = TextEditingController();
    exhibiNameFieldController = TextEditingController();
    exhibiSubFieldController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    assetDescriptionFieldController?.dispose();
    exhibiNameFieldController?.dispose();
    exhibiSubFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Create Exhibition',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Apotek',
                color: FlutterFlowTheme.of(context).darkBG,
                fontSize: 22,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 510,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final selectedMedia = await selectMedia(
                                      mediaSource: MediaSource.photoGallery,
                                      multiImage: false,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      showUploadMessage(
                                        context,
                                        'Uploading file...',
                                        showLoading: true,
                                      );
                                      final downloadUrls = (await Future.wait(
                                              selectedMedia.map((m) async =>
                                                  await uploadData(
                                                      m.storagePath, m.bytes))))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      if (downloadUrls.length ==
                                          selectedMedia.length) {
                                        setState(() => uploadedFileUrl =
                                            downloadUrls.first);
                                        showUploadMessage(
                                          context,
                                          'Success!',
                                        );
                                      } else {
                                        showUploadMessage(
                                          context,
                                          'Failed to upload media',
                                        );
                                        return;
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 300,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Container(
                                      width: 300,
                                      height: 100,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 2, 2, 2),
                                            child: Image.network(
                                              FFAppState().currentIMGRef,
                                              width: 300,
                                              height: 150,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    100, 25, 0, 0),
                                            child: Icon(
                                              Icons.upload_rounded,
                                              color: Color(0xFF3737E6),
                                              size: 80,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Start Date',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.date_range_sharp,
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
                                                setState(
                                                    () => datePicked1 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                              minTime: DateTime(0, 0, 0),
                                              locale:
                                                  LocaleType.values.firstWhere(
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
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'End Date',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.date_range_sharp,
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
                                                setState(
                                                    () => datePicked2 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                              minTime: DateTime(0, 0, 0),
                                              locale:
                                                  LocaleType.values.firstWhere(
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: TextFormField(
                                  controller: exhibiNameFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Exhibition Title',
                                    hintText: 'Please enter a descriptive name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Minion Pro Font',
                                          color: FlutterFlowTheme.of(context)
                                              .darkBG,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        fontSize: 14,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: TextFormField(
                                  controller: exhibiSubFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Subtitle',
                                    hintText: 'Please enter a descriptive name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Minion Pro Font',
                                          color: FlutterFlowTheme.of(context)
                                              .darkBG,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        fontSize: 14,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: TextFormField(
                                  controller: assetDescriptionFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Description',
                                    hintText:
                                        'Please enter a descriptive description',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Minion Pro Font',
                                          color: FlutterFlowTheme.of(context)
                                              .darkBG,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        fontSize: 14,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: StreamBuilder<List<ArtistsRecord>>(
                                  stream: queryArtistsRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SpinKitFadingCube(
                                            color: Color(0xFF3737E6),
                                            size: 50,
                                          ),
                                        ),
                                      );
                                    }
                                    List<ArtistsRecord>
                                        dropDownArtistsRecordList =
                                        snapshot.data!;
                                    return FlutterFlowDropDown(
                                      options: dropDownArtistsRecordList
                                          .map((e) => e.artistName!)
                                          .toList()
                                          .toList(),
                                      onChanged: (val) =>
                                          setState(() => dropDownValue = val),
                                      width: 180,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Minion Pro Font',
                                            color: Colors.black,
                                            useGoogleFonts: false,
                                          ),
                                      hintText: 'Please select  Artist',
                                      fillColor: Colors.white,
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    );
                                  },
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.add,
                                  color: Color(0xFF3737E6),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: CreateArtistWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                      child: StreamBuilder<List<ArtistsRecord>>(
                        stream: queryArtistsRecord(
                          queryBuilder: (artistsRecord) => artistsRecord.where(
                              'ArtistName',
                              isEqualTo:
                                  dropDownValue != '' ? dropDownValue : null),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitFadingCube(
                                  color: Color(0xFF3737E6),
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<ArtistsRecord> buttonArtistsRecordList =
                              snapshot.data!;
                          // Return an empty Container when the document does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonArtistsRecord =
                              buttonArtistsRecordList.isNotEmpty
                                  ? buttonArtistsRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              final exhibitionListCreateData =
                                  createExhibitionListRecordData(
                                exhibitionStartDate: datePicked1,
                                exhibitionEndDate: datePicked2,
                                exhibitionDescription:
                                    assetDescriptionFieldController!.text,
                                exhibitionFeaturedPic: uploadedFileUrl,
                                exhibitName: exhibiNameFieldController!.text,
                                exhibitSubline: exhibiSubFieldController!.text,
                                exhibitionLeader: currentUserReference,
                                exhibitionArtist:
                                    buttonArtistsRecord!.reference,
                              );
                              var exhibitionListRecordReference =
                                  ExhibitionListRecord.collection.doc();
                              await exhibitionListRecordReference
                                  .set(exhibitionListCreateData);
                              assetCreatedRef =
                                  ExhibitionListRecord.getDocumentFromData(
                                      exhibitionListCreateData,
                                      exhibitionListRecordReference);

                              context.pushNamed('ExhibitionPage');

                              setState(() {});
                            },
                            text: 'Create Exhibition',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Colors.black,
                              textStyle: FlutterFlowTheme.of(context)
                                  .title2
                                  .override(
                                    fontFamily: 'Apotek',
                                    color: FlutterFlowTheme.of(context).white,
                                    useGoogleFonts: false,
                                  ),
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          );
                        },
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
  }
}
