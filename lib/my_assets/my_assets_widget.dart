import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAssetsWidget extends StatefulWidget {
  const MyAssetsWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _MyAssetsWidgetState createState() => _MyAssetsWidgetState();
}

class _MyAssetsWidgetState extends State<MyAssetsWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;
  String? dropDownValue4;
  String? dropDownValue5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'ALL ASSETS',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Apotek',
                color: FlutterFlowTheme.of(context).secondaryColor,
                fontSize: 30,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF5F2F0),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FutureBuilder<List<ExhibitionListRecord>>(
                    future: queryExhibitionListRecordOnce(
                      queryBuilder: (exhibitionListRecord) =>
                          exhibitionListRecord.where('exhibitName',
                              isEqualTo:
                                  dropDownValue1 != '' ? dropDownValue1 : null),
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
                          containerExhibitionListRecordList = snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerExhibitionListRecord =
                          containerExhibitionListRecordList.isNotEmpty
                              ? containerExhibitionListRecordList.first
                              : null;
                      return InkWell(
                        onTap: () async {
                          setState(() => FFAppState().currentExhibition =
                              containerExhibitionListRecord!.reference);
                        },
                        child: Container(
                          width: 112,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FutureBuilder<List<FgfCatalogRecord>>(
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
                                    dropDownFgfCatalogRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown(
                                  options: dropDownFgfCatalogRecordList
                                      .map((e) => e.catTitle!)
                                      .toList()
                                      .toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue1 = val),
                                  width: 112,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        color: Colors.black,
                                        fontSize: 13,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Catalog',
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
                        ),
                      );
                    },
                  ),
                  FutureBuilder<List<ExhibitionListRecord>>(
                    future: queryExhibitionListRecordOnce(
                      queryBuilder: (exhibitionListRecord) =>
                          exhibitionListRecord.where('exhibitName',
                              isEqualTo:
                                  dropDownValue2 != '' ? dropDownValue2 : null),
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
                          containerExhibitionListRecordList = snapshot.data!;
                      // Return an empty Container when the document does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerExhibitionListRecord =
                          containerExhibitionListRecordList.isNotEmpty
                              ? containerExhibitionListRecordList.first
                              : null;
                      return InkWell(
                        onTap: () async {
                          setState(() => FFAppState().currentExhibition =
                              containerExhibitionListRecord!.reference);
                        },
                        child: Container(
                          width: 112,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FutureBuilder<List<ExhibitionListRecord>>(
                              future: queryExhibitionListRecordOnce(),
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
                                    dropDownExhibitionListRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown(
                                  options: dropDownExhibitionListRecordList
                                      .map((e) => e.exhibitName!)
                                      .toList()
                                      .toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue2 = val),
                                  width: 112,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Minion Pro Font',
                                        color: Colors.black,
                                        fontSize: 13,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Collection',
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
                        ),
                      );
                    },
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: FutureBuilder<List<ArtistsRecord>>(
                        future: queryArtistsRecordOnce(),
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
                          List<ArtistsRecord> dropDownArtistsRecordList =
                              snapshot.data!;
                          return FlutterFlowDropDown(
                            options: dropDownArtistsRecordList
                                .map((e) => e.artistName!)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => dropDownValue3 = val),
                            width: 112,
                            height: 50,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Minion Pro Font',
                                      color: Colors.black,
                                      fontSize: 13,
                                      useGoogleFonts: false,
                                    ),
                            hintText: 'Artist',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FutureBuilder<List<RightsListRecord>>(
                      future: queryRightsListRecordOnce(),
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
                        List<RightsListRecord> dropDownRightsListRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown(
                          options: dropDownRightsListRecordList
                              .map((e) => e.rightsTitle!)
                              .toList()
                              .toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue4 = val),
                          width: 112,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Minion Pro Font',
                                    color: Colors.black,
                                    fontSize: 13,
                                    useGoogleFonts: false,
                                  ),
                          hintText: 'Rights',
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FutureBuilder<List<FfLocationRecord>>(
                      future: queryFfLocationRecordOnce(),
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
                        List<FfLocationRecord> dropDownFfLocationRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown(
                          options: dropDownFfLocationRecordList
                              .map((e) => e.locationName!)
                              .toList()
                              .toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue5 = val),
                          width: 112,
                          height: 50,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Minion Pro Font',
                                    color: Colors.black,
                                    fontSize: 13,
                                    useGoogleFonts: false,
                                  ),
                          hintText: 'Location',
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.image_search,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.cancel,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                    child: Container(
                      width: 112,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.select_all,
                          color: Color(0xFF3737E6),
                          size: 30,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 112,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.download_outlined,
                        color: Color(0xFF3737E6),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: StreamBuilder<List<AssetCollectionRecord>>(
                  stream: queryAssetCollectionRecord(
                    queryBuilder: (assetCollectionRecord) =>
                        assetCollectionRecord.orderBy('createdOn',
                            descending: true),
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
                    List<AssetCollectionRecord>
                        gridViewAssetCollectionRecordList = snapshot.data!;
                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 1,
                      ),
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewAssetCollectionRecordList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewAssetCollectionRecord =
                            gridViewAssetCollectionRecordList[gridViewIndex];
                        return StreamBuilder<List<ImgAssetRecord>>(
                          stream: queryImgAssetRecord(
                            queryBuilder: (imgAssetRecord) =>
                                imgAssetRecord.where('AssetName',
                                    isEqualTo: gridViewAssetCollectionRecord
                                                .assetCollectionName !=
                                            ''
                                        ? gridViewAssetCollectionRecord
                                            .assetCollectionName
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
                            List<ImgAssetRecord> imageImgAssetRecordList =
                                snapshot.data!;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final imageImgAssetRecord =
                                imageImgAssetRecordList.isNotEmpty
                                    ? imageImgAssetRecordList.first
                                    : null;
                            return InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'assetDetailsPage',
                                  queryParams: {
                                    'assetIMGRef': serializeParam(
                                        imageImgAssetRecord!.reference,
                                        ParamType.DocumentReference),
                                    'assetColREf': serializeParam(
                                        gridViewAssetCollectionRecord.reference,
                                        ParamType.DocumentReference),
                                    'artistRef': serializeParam(
                                        imageImgAssetRecord!.assetArtist,
                                        ParamType.DocumentReference),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );
                              },
                              child: CachedNetworkImage(
                                imageUrl:
                                    gridViewAssetCollectionRecord.actualImage!,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
