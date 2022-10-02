import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageV2Widget extends StatefulWidget {
  const HomepageV2Widget({
    Key? key,
    this.currentExhibition,
  }) : super(key: key);

  final DocumentReference? currentExhibition;

  @override
  _HomepageV2WidgetState createState() => _HomepageV2WidgetState();
}

class _HomepageV2WidgetState extends State<HomepageV2Widget> {
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
        title: AuthUserStreamWidget(
          child: Text(
            'Welcome back, ${currentUserDisplayName}',
            style: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: 'Minion Pro Font',
                  color: FlutterFlowTheme.of(context).primaryBlack,
                  fontStyle: FontStyle.italic,
                  useGoogleFonts: false,
                ),
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/ToNHero_9x16-100-2.jpeg',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 6, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('ExhibitionPage');
                          },
                          child: AutoSizeText(
                            'Fotografiska Catalog',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Minion Pro Font',
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 12, 14, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 20, 20),
                            child: Builder(
                              builder: (context) {
                                final iofCats =
                                    FFAppState().currentCatalogs.toList();
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(iofCats.length,
                                        (iofCatsIndex) {
                                      final iofCatsItem = iofCats[iofCatsIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 30, 30, 10),
                                            child: InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                    'ExhibitionPage');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5,
                                                child: Container(
                                                  width: 300,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    border: Border.all(
                                                      color: Color(0xFF777777),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      AutoSizeText(
                                                        iofCatsItem,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title2
                                                                .override(
                                                                  fontFamily:
                                                                      'Apotek',
                                                                  fontSize: (isWeb
                                                                          ? 30
                                                                          : 12)
                                                                      .toDouble(),
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: Color(0xC8F5F2F0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Number of  Items: 237\n',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Minion Pro Font',
                                                          fontSize: 18,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Last Modified Date: ${dateTimeFormat('d/M H:mm', getCurrentTimestamp)}',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Minion Pro Font',
                                                          fontSize: 18,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                );
                              },
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
      ),
    );
  }
}
