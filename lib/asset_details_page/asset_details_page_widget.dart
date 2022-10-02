import '../backend/backend.dart';
import '../components/add_note_widget.dart';
import '../components/share_asset_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class AssetDetailsPageWidget extends StatefulWidget {
  const AssetDetailsPageWidget({
    Key? key,
    this.assetIMGRef,
    this.assetColREf,
    this.artistRef,
  }) : super(key: key);

  final DocumentReference? assetIMGRef;
  final DocumentReference? assetColREf;
  final DocumentReference? artistRef;

  @override
  _AssetDetailsPageWidgetState createState() => _AssetDetailsPageWidgetState();
}

class _AssetDetailsPageWidgetState extends State<AssetDetailsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ImgAssetRecord>(
      stream: ImgAssetRecord.getDocument(widget.assetIMGRef!),
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
        final assetDetailsPageImgAssetRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF3737E6),
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'Asset Details',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Apotek',
                    color: FlutterFlowTheme.of(context).primaryBlack,
                    fontSize: 22,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: Color(0xFFF5F2F0),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 12, 30, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 10, 10),
                            child: StreamBuilder<AssetCollectionRecord>(
                              stream: AssetCollectionRecord.getDocument(
                                  widget.assetColREf!),
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
                                final assetTitleTextAssetCollectionRecord =
                                    snapshot.data!;
                                return Text(
                                  assetTitleTextAssetCollectionRecord
                                      .assetCollectionName!,
                                  style: FlutterFlowTheme.of(context).title2,
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
                              Icons.add_comment,
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
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      child: AddNoteWidget(
                                        imageRef: assetDetailsPageImgAssetRecord
                                            .reference,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                          ),
                          if (assetDetailsPageImgAssetRecord.sharingAllowed ??
                              true)
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.share_sharp,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
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
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        child: ShareAssetWidget(
                                          currentAsset:
                                              assetDetailsPageImgAssetRecord
                                                  .reference,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                            ),
                          if (assetDetailsPageImgAssetRecord.dwldAllowed ??
                              true)
                            StreamBuilder<ImgAssetRecord>(
                              stream: ImgAssetRecord.getDocument(
                                  widget.assetIMGRef!),
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
                                final iconButtonImgAssetRecord = snapshot.data!;
                                return FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.file_download,
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    await actions.imagedownloaderweb(
                                      iconButtonImgAssetRecord.assetImage!,
                                    );
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 2, 30, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StreamBuilder<AssetCollectionRecord>(
                            stream: AssetCollectionRecord.getDocument(
                                widget.assetColREf!),
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
                              final columnAssetCollectionRecord =
                                  snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 40, 0),
                                    child: StreamBuilder<ArtistsRecord>(
                                      stream: ArtistsRecord.getDocument(
                                          widget.artistRef!),
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
                                        final artistRefArtistsRecord =
                                            snapshot.data!;
                                        return Text(
                                          'Artist: ${artistRefArtistsRecord.artistName}',
                                          style: FlutterFlowTheme.of(context)
                                              .title2,
                                        );
                                      },
                                    ),
                                  ),
                                  Text(
                                    'Created: ${dateTimeFormat('d/M h:mm a', columnAssetCollectionRecord.createdOn)}',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Text(
                                    'Actual Version Nr: ${columnAssetCollectionRecord.latestVersionNr?.toString()}',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  StreamBuilder<RightsListRecord>(
                                    stream: RightsListRecord.getDocument(
                                        columnAssetCollectionRecord.rightRef!),
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
                                      final currentRightRightsListRecord =
                                          snapshot.data!;
                                      return Text(
                                        'Right:${currentRightRightsListRecord.rightsTitle}',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      );
                                    },
                                  ),
                                  Text(
                                    'Disributed: 21 times',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
                      child: FutureBuilder<ImgAssetRecord>(
                        future:
                            ImgAssetRecord.getDocumentOnce(widget.assetIMGRef!),
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
                          final rowImgAssetRecord = snapshot.data!;
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            rowImgAssetRecord.assetImage!,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: rowImgAssetRecord.assetImage!,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: rowImgAssetRecord.assetImage!,
                                    transitionOnUserGestures: true,
                                    child: Image.network(
                                      rowImgAssetRecord.assetImage!,
                                      width: MediaQuery.of(context).size.width *
                                          0.92,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Text(
                            'Related Notes',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Minion Pro Font',
                                      fontSize: 20,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        StreamBuilder<List<AssetNotesRecord>>(
                          stream: queryAssetNotesRecord(
                            queryBuilder: (assetNotesRecord) => assetNotesRecord
                                .where('assetRef',
                                    isEqualTo: assetDetailsPageImgAssetRecord
                                        .reference)
                                .orderBy('timeCreated', descending: true),
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
                            List<AssetNotesRecord> columnAssetNotesRecordList =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnAssetNotesRecordList.length,
                                  (columnIndex) {
                                final columnAssetNotesRecord =
                                    columnAssetNotesRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 2),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context).white,
                                    elevation: 5,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 10, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'M/d h:mm a',
                                                      columnAssetNotesRecord
                                                          .timeCreated!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Text(
                                                columnAssetNotesRecord
                                                    .userName!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Minion Pro Font',
                                                          fontSize: 15,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 10, 10),
                                          child: Text(
                                            columnAssetNotesRecord.note!,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Minion Pro Font',
                                                  fontSize: 20,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
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
        );
      },
    );
  }
}
