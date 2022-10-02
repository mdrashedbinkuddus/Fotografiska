import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/create_artist_widget.dart';
import '../components/create_right_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateIMGAssetWidget extends StatefulWidget {
  const CreateIMGAssetWidget({
    Key? key,
    this.currentAssetRef,
    this.currentPath,
  }) : super(key: key);

  final DocumentReference? currentAssetRef;
  final String? currentPath;

  @override
  _CreateIMGAssetWidgetState createState() => _CreateIMGAssetWidgetState();
}

class _CreateIMGAssetWidgetState extends State<CreateIMGAssetWidget> {
  List<String> uploadedFileUrls = [];
  bool? checkDwldsRightValue;
  bool? checkShareRightValue;
  TextEditingController? assetNameFieldController;
  TextEditingController? assetDescriptionFieldController;
  TextEditingController? assetTagFieldController;
  String? dropDownArtistValue1;
  String? dropDownArtistValue2;
  String? dropDownArtistValue3;
  String? dropDownExhibitValue;
  String? dropDownRightValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    assetDescriptionFieldController = TextEditingController();
    assetNameFieldController = TextEditingController();
    assetTagFieldController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    assetDescriptionFieldController?.dispose();
    assetNameFieldController?.dispose();
    assetTagFieldController?.dispose();
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
          'Create Image Asset',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Apotek',
                fontSize: 24,
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: true,
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
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() =>
                                              uploadedFileUrls = downloadUrls);
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
                                      width: 200,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  FFAppState().currentIMGRef,
                                                  'https://picsum.photos/200/300',
                                                ),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(75, 50, 0, 0),
                                              child: Icon(
                                                Icons.upload_sharp,
                                                color: Color(0xFF3737E6),
                                                size: 50,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 5, 0, 0),
                                          child: Text(
                                            'Distribution Rights',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Apotek',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  fontSize: 24,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                          ),
                                          child: CheckboxListTile(
                                            value: checkDwldsRightValue ??=
                                                true,
                                            onChanged: (newValue) => setState(
                                                () => checkDwldsRightValue =
                                                    newValue!),
                                            title: Text(
                                              'Download',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Minion Pro Font',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryColor,
                                                        fontSize: 16,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .white,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                          ),
                                        ),
                                        Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                          ),
                                          child: CheckboxListTile(
                                            value: checkShareRightValue ??=
                                                false,
                                            onChanged: (newValue) => setState(
                                                () => checkShareRightValue =
                                                    newValue!),
                                            title: Text(
                                              'Sharing',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Minion Pro Font',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryColor,
                                                        fontSize: 16,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            tileColor: Color(0xFFF5F5F5),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .white,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                          ),
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
                                    controller: assetNameFieldController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                      hintText:
                                          'Please enter a descriptive name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
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
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Minion Pro Font',
                                          letterSpacing: 0,
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
                                          .bodyText1,
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
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
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
                                    controller: assetTagFieldController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Tags',
                                      hintText:
                                          'Please enter tags seperated by ,',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
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
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child:
                                        FutureBuilder<List<FgfCatalogRecord>>(
                                      future: queryFgfCatalogRecordOnce(
                                        queryBuilder: (fgfCatalogRecord) =>
                                            fgfCatalogRecord.orderBy('sortInt'),
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
                                        List<FgfCatalogRecord>
                                            dropDownArtistFgfCatalogRecordList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown(
                                          options:
                                              dropDownArtistFgfCatalogRecordList
                                                  .map((e) => e.catTitle!)
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) => setState(
                                              () => dropDownArtistValue1 = val),
                                          width: 180,
                                          height: 50,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily:
                                                        'Minion Pro Font',
                                                    color: Colors.black,
                                                    useGoogleFonts: false,
                                                  ),
                                          hintText:
                                              'Please select related Catalog',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: CreateArtistWidget(),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child:
                                        FutureBuilder<List<CollectionsRecord>>(
                                      future: queryCollectionsRecordOnce(
                                        queryBuilder: (collectionsRecord) =>
                                            collectionsRecord
                                                .orderBy('exhibitName'),
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
                                        List<CollectionsRecord>
                                            dropDownArtistCollectionsRecordList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown(
                                          options:
                                              dropDownArtistCollectionsRecordList
                                                  .map((e) => e.exhibitName!)
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) => setState(
                                              () => dropDownArtistValue2 = val),
                                          width: 180,
                                          height: 50,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily:
                                                        'Minion Pro Font',
                                                    color: Colors.black,
                                                    useGoogleFonts: false,
                                                  ),
                                          hintText:
                                              'Please select related Collection',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: CreateArtistWidget(),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 250,
                                    height: 50,
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
                                            dropDownArtistArtistsRecordList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown(
                                          options:
                                              dropDownArtistArtistsRecordList
                                                  .map((e) => e.artistName!)
                                                  .toList()
                                                  .toList(),
                                          onChanged: (val) => setState(
                                              () => dropDownArtistValue3 = val),
                                          width: 180,
                                          height: 50,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily:
                                                        'Minion Pro Font',
                                                    color: Colors.black,
                                                    useGoogleFonts: false,
                                                  ),
                                          hintText:
                                              'Please select related Artist/Group',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: CreateArtistWidget(),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
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
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: FutureBuilder<List<FfLocationRecord>>(
                                    future: queryFfLocationRecordOnce(
                                      queryBuilder: (ffLocationRecord) =>
                                          ffLocationRecord
                                              .orderBy('LocationName'),
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
                                      List<FfLocationRecord>
                                          dropDownExhibitFfLocationRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        options:
                                            dropDownExhibitFfLocationRecordList
                                                .map((e) => e.locationName!)
                                                .toList()
                                                .toList(),
                                        onChanged: (val) => setState(
                                            () => dropDownExhibitValue = val),
                                        width: 180,
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Minion Pro Font',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: 'Please select location',
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
                                    context.pushNamed('createExhibitions');
                                  },
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
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: StreamBuilder<List<RightsListRecord>>(
                                    stream: queryRightsListRecord(),
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
                                      List<RightsListRecord>
                                          dropDownRightRightsListRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        options:
                                            dropDownRightRightsListRecordList
                                                .map((e) =>
                                                    valueOrDefault<String>(
                                                      e.rightsTitle!,
                                                      'Copyright',
                                                    ))
                                                .toList()
                                                .toList(),
                                        onChanged: (val) => setState(
                                            () => dropDownRightValue = val),
                                        width: 180,
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Minion Pro Font',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                        hintText:
                                            'Please select  the corresponding right',
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
                                          child: CreateRightWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  StreamBuilder<List<RightsListRecord>>(
                                    stream: queryRightsListRecord(
                                      queryBuilder: (rightsListRecord) =>
                                          rightsListRecord.where('rightsTitle',
                                              isEqualTo:
                                                  dropDownRightValue != ''
                                                      ? dropDownRightValue
                                                      : null),
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
                                      List<RightsListRecord>
                                          containerRightsListRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerRightsListRecord =
                                          containerRightsListRecordList
                                                  .isNotEmpty
                                              ? containerRightsListRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 300,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: StreamBuilder<
                                            List<ExhibitionListRecord>>(
                                          stream: queryExhibitionListRecord(
                                            queryBuilder: (exhibitionListRecord) =>
                                                exhibitionListRecord.where(
                                                    'exhibitName',
                                                    isEqualTo:
                                                        dropDownExhibitValue !=
                                                                ''
                                                            ? dropDownExhibitValue
                                                            : null),
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
                                            List<ExhibitionListRecord>
                                                buttonExhibitionListRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the document does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final buttonExhibitionListRecord =
                                                buttonExhibitionListRecordList
                                                        .isNotEmpty
                                                    ? buttonExhibitionListRecordList
                                                        .first
                                                    : null;
                                            return FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Create',
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color: Colors.black,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Apotek',
                                                          fontSize: 24,
                                                          useGoogleFonts: false,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  width: 0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
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
            ],
          ),
        ),
      ),
    );
  }
}
