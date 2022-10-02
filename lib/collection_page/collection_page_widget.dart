import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CollectionPageWidget extends StatefulWidget {
  const CollectionPageWidget({
    Key? key,
    this.currentExhibition,
  }) : super(key: key);

  final DocumentReference? currentExhibition;

  @override
  _CollectionPageWidgetState createState() => _CollectionPageWidgetState();
}

class _CollectionPageWidgetState extends State<CollectionPageWidget> {
  PagingController<DocumentSnapshot?, ExhibitionListRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  String? choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
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
          'EXHIBITIONS',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFF5F2F0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 6, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Current Exhibitions',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Apotek',
                            fontSize: 24,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 6, 16, 0),
                child: StreamBuilder<List<FgfCatalogRecord>>(
                  stream: queryFgfCatalogRecord(
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
                    List<FgfCatalogRecord> rowFgfCatalogRecordList =
                        snapshot.data!;
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(rowFgfCatalogRecordList.length,
                          (rowIndex) {
                        final rowFgfCatalogRecord =
                            rowFgfCatalogRecordList[rowIndex];
                        return Expanded(
                          child: FlutterFlowChoiceChips(
                            initiallySelected: [
                              if (choiceChipsValue != null) choiceChipsValue!
                            ],
                            options: [
                              ChipData('Option 1', Icons.train_outlined)
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChipsValue = val?.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFFE3E7ED),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Minion Pro Font',
                                    color: Colors.white,
                                    useGoogleFonts: false,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Minion Pro Font',
                                    color: Color(0xFFE3E7ED),
                                    useGoogleFonts: false,
                                  ),
                              iconColor: Color(0xFFE3E7ED),
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 20,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14, 12, 14, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 16, 0),
                        child: PagedListView<DocumentSnapshot<Object?>?,
                            ExhibitionListRecord>(
                          pagingController: () {
                            final Query<Object?> Function(Query<Object?>)
                                queryBuilder = (exhibitionListRecord) =>
                                    exhibitionListRecord
                                        .orderBy('exhibitionStartDate');
                            if (_pagingController != null) {
                              final query =
                                  queryBuilder(ExhibitionListRecord.collection);
                              if (query != _pagingQuery) {
                                // The query has changed
                                _pagingQuery = query;
                                _streamSubscriptions
                                    .forEach((s) => s?.cancel());
                                _streamSubscriptions.clear();
                                _pagingController!.refresh();
                              }
                              return _pagingController!;
                            }

                            _pagingController =
                                PagingController(firstPageKey: null);
                            _pagingQuery =
                                queryBuilder(ExhibitionListRecord.collection);
                            _pagingController!
                                .addPageRequestListener((nextPageMarker) {
                              queryExhibitionListRecordPage(
                                queryBuilder: (exhibitionListRecord) =>
                                    exhibitionListRecord
                                        .orderBy('exhibitionStartDate'),
                                nextPageMarker: nextPageMarker,
                                pageSize: 5,
                                isStream: true,
                              ).then((page) {
                                _pagingController!.appendPage(
                                  page.data,
                                  page.nextPageMarker,
                                );
                                final streamSubscription =
                                    page.dataStream?.listen((data) {
                                  final itemIndexes = _pagingController!
                                      .itemList!
                                      .asMap()
                                      .map((k, v) =>
                                          MapEntry(v.reference.id, k));
                                  data.forEach((item) {
                                    final index =
                                        itemIndexes[item.reference.id];
                                    final items = _pagingController!.itemList!;
                                    if (index != null) {
                                      items.replaceRange(
                                          index, index + 1, [item]);
                                      _pagingController!.itemList = {
                                        for (var item in items)
                                          item.reference: item
                                      }.values.toList();
                                    }
                                  });
                                  setState(() {});
                                });
                                _streamSubscriptions.add(streamSubscription);
                              });
                            });
                            return _pagingController!;
                          }(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          builderDelegate:
                              PagedChildBuilderDelegate<ExhibitionListRecord>(
                            // Customize what your widget looks like when it's loading the first page.
                            firstPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitFadingCube(
                                  color: Color(0xFF3737E6),
                                  size: 50,
                                ),
                              ),
                            ),

                            itemBuilder: (context, _, listViewIndex) {
                              final listViewExhibitionListRecord =
                                  _pagingController!.itemList![listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                                child: InkWell(
                                  onTap: () async {
                                    setState(() => FFAppState()
                                            .currentExhibition =
                                        listViewExhibitionListRecord.reference);
                                  },
                                  child: Container(
                                    width: 260,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Container(
                                            width: 260,
                                            height: 175,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    valueOrDefault<String>(
                                                  listViewExhibitionListRecord
                                                      .exhibitionFeaturedPic,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-a-m-fotografiska-6hjc29/assets/jh4tlexejqbt/NBV_263_MITCHELL_edit-desktop.jpeg',
                                                ),
                                                width: 220,
                                                height: 140,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Text(
                                            listViewExhibitionListRecord
                                                .exhibitName!,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Apotek',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 30,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 120, 0, 0),
                                          child: Text(
                                            '${dateTimeFormat('MEd', listViewExhibitionListRecord.exhibitionStartDate)} - ${dateTimeFormat('MEd', listViewExhibitionListRecord.exhibitionEndDate)}',
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Apotek',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 22,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 30, 0, 0),
                                          child: Text(
                                            listViewExhibitionListRecord
                                                .exhibitSubline!,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Minion Pro Font',
                                                  fontSize: 15,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 440,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(50, 10, 50, 50),
                        child: DefaultTabController(
                          length: 3,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              TabBar(
                                labelColor: Color(0xFF3737E6),
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).darkBG,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Minion Pro Font',
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                tabs: [
                                  Tab(
                                    text: 'Images',
                                  ),
                                  Tab(
                                    text: 'Videos',
                                  ),
                                  Tab(
                                    text: 'Audios',
                                  ),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FutureBuilder<ExhibitionListRecord>(
                                            future: ExhibitionListRecord
                                                .getDocumentOnce(FFAppState()
                                                    .currentExhibition!),
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
                                              final columnExhibitionListRecord =
                                                  snapshot.data!;
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 8),
                                                    child: Text(
                                                      columnExhibitionListRecord
                                                          .exhibitName!,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Apotek',
                                                                fontSize: 24,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                  ),
                                                  FutureBuilder<
                                                      List<
                                                          AssetCollectionRecord>>(
                                                    future:
                                                        queryAssetCollectionRecordOnce(
                                                      queryBuilder: (assetCollectionRecord) =>
                                                          assetCollectionRecord.where(
                                                              'exhibitionRef',
                                                              isEqualTo:
                                                                  FFAppState()
                                                                      .currentExhibition),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                SpinKitFadingCube(
                                                              color: Color(
                                                                  0xFF3737E6),
                                                              size: 50,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<AssetCollectionRecord>
                                                          columnAssetCollectionRecordList =
                                                          snapshot.data!;
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: List.generate(
                                                            columnAssetCollectionRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnAssetCollectionRecord =
                                                              columnAssetCollectionRecordList[
                                                                  columnIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        5),
                                                            child: StreamBuilder<
                                                                List<
                                                                    ImgAssetRecord>>(
                                                              stream:
                                                                  queryImgAssetRecord(
                                                                queryBuilder: (imgAssetRecord) => imgAssetRecord.where(
                                                                    'AssetName',
                                                                    isEqualTo: columnAssetCollectionRecord.assetCollectionName !=
                                                                            ''
                                                                        ? columnAssetCollectionRecord
                                                                            .assetCollectionName
                                                                        : null),
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 50,
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          SpinKitFadingCube(
                                                                        color: Color(
                                                                            0xFF3737E6),
                                                                        size:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ImgAssetRecord>
                                                                    rowImgAssetRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                final rowImgAssetRecord =
                                                                    rowImgAssetRecordList
                                                                            .isNotEmpty
                                                                        ? rowImgAssetRecordList
                                                                            .first
                                                                        : null;
                                                                return InkWell(
                                                                  onLongPress:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'assetDetailsPage',
                                                                      queryParams:
                                                                          {
                                                                        'assetIMGRef': serializeParam(
                                                                            rowImgAssetRecord!.reference,
                                                                            ParamType.DocumentReference),
                                                                        'assetColREf': serializeParam(
                                                                            columnAssetCollectionRecord.reference,
                                                                            ParamType.DocumentReference),
                                                                        'artistRef': serializeParam(
                                                                            rowImgAssetRecord!.assetArtist,
                                                                            ParamType.DocumentReference),
                                                                      }.withoutNulls,
                                                                      extra: <
                                                                          String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.rightToLeft,
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Image
                                                                          .network(
                                                                        rowImgAssetRecord!
                                                                            .assetImage!,
                                                                        width:
                                                                            100,
                                                                        height:
                                                                            100,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child: FutureBuilder<
                                                                            RightsListRecord>(
                                                                          future:
                                                                              RightsListRecord.getDocumentOnce(columnAssetCollectionRecord.rightRef!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final columnRightsListRecord =
                                                                                snapshot.data!;
                                                                            return Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                FutureBuilder<ArtistsRecord>(
                                                                                  future: ArtistsRecord.getDocumentOnce(rowImgAssetRecord!.assetArtist!),
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
                                                                                    final textArtistsRecord = snapshot.data!;
                                                                                    return Text(
                                                                                      'Artist: ${textArtistsRecord.artistName}',
                                                                                      style: FlutterFlowTheme.of(context).title2.override(
                                                                                            fontFamily: 'Apotek',
                                                                                            fontSize: 20,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                    children: [
                                                                                      Text(
                                                                                        columnAssetCollectionRecord.assetCollectionName!,
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Minion Pro Font',
                                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                              fontSize: 16,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        ' | Vers.: ${formatNumber(
                                                                                          rowImgAssetRecord!.versionNr,
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.commaDecimal,
                                                                                        )}',
                                                                                        style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                              fontFamily: 'Minion Pro Font',
                                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                              fontSize: 16,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                  child: Text(
                                                                                    'Rights: ${columnRightsListRecord.rightsTitle}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Minion Pro Font',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                  child: Text(
                                                                                    'Rights Holder: ${columnRightsListRecord.rightsHolder}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Minion Pro Font',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'coming soon',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Minion Pro Font',
                                                  fontSize: 15,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'coming soon',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Minion Pro Font',
                                            fontSize: 14,
                                            useGoogleFonts: false,
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
            ],
          ),
        ),
      ),
    );
  }
}
