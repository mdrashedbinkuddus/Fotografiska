import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAssetWidget extends StatefulWidget {
  const AddAssetWidget({
    Key? key,
    this.currentAssetREF,
    this.currentIMGAssetREF,
  }) : super(key: key);

  final DocumentReference? currentAssetREF;
  final DocumentReference? currentIMGAssetREF;

  @override
  _AddAssetWidgetState createState() => _AddAssetWidgetState();
}

class _AddAssetWidgetState extends State<AddAssetWidget> {
  String uploadedFileUrl = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      showUploadMessage(
                        context,
                        'Uploading file...',
                        showLoading: true,
                      );
                      final downloadUrls = (await Future.wait(selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes))))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (downloadUrls.length == selectedMedia.length) {
                        setState(() => uploadedFileUrl = downloadUrls.first);
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
                    height: 200,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Photo',
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                      ],
                    ),
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
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Add Asset',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context).title2,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
