import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _currentDeviceisMobile =
        prefs.getBool('ff_currentDeviceisMobile') ?? _currentDeviceisMobile;
    _exhibitionList = prefs
            .getStringList('ff_exhibitionList')
            ?.map((path) => path.ref)
            .toList() ??
        _exhibitionList;
    _artistList = prefs
            .getStringList('ff_artistList')
            ?.map((path) => path.ref)
            .toList() ??
        _artistList;
    _imgAssetList = prefs
            .getStringList('ff_imgAssetList')
            ?.map((path) => path.ref)
            .toList() ??
        _imgAssetList;
    _assetCollectionList = prefs
            .getStringList('ff_assetCollectionList')
            ?.map((path) => path.ref)
            .toList() ??
        _assetCollectionList;
    _rightsList = prefs
            .getStringList('ff_rightsList')
            ?.map((path) => path.ref)
            .toList() ??
        _rightsList;
    _currentExhibition =
        prefs.getString('ff_currentExhibition')?.ref ?? _currentExhibition;
    _imgList = prefs.getStringList('ff_imgList') ?? _imgList;
    _imgPathList = prefs.getStringList('ff_imgPathList') ?? _imgPathList;
  }

  late SharedPreferences prefs;

  DocumentReference? currentRightRef;

  DocumentReference? currentAssetRef;

  bool _currentDeviceisMobile = false;
  bool get currentDeviceisMobile => _currentDeviceisMobile;
  set currentDeviceisMobile(bool _value) {
    _currentDeviceisMobile = _value;
    prefs.setBool('ff_currentDeviceisMobile', _value);
  }

  List<DocumentReference> _exhibitionList = [];
  List<DocumentReference> get exhibitionList => _exhibitionList;
  set exhibitionList(List<DocumentReference> _value) {
    _exhibitionList = _value;
    prefs.setStringList(
        'ff_exhibitionList', _value.map((x) => x.path).toList());
  }

  void addToExhibitionList(DocumentReference _value) {
    _exhibitionList.add(_value);
    prefs.setStringList(
        'ff_exhibitionList', _exhibitionList.map((x) => x.path).toList());
  }

  void removeFromExhibitionList(DocumentReference _value) {
    _exhibitionList.remove(_value);
    prefs.setStringList(
        'ff_exhibitionList', _exhibitionList.map((x) => x.path).toList());
  }

  String currentIMGRef =
      'https://img.guidebook-sweden.com/stockholms-kommun/fotografiska.jpg';

  List<DocumentReference> _artistList = [];
  List<DocumentReference> get artistList => _artistList;
  set artistList(List<DocumentReference> _value) {
    _artistList = _value;
    prefs.setStringList('ff_artistList', _value.map((x) => x.path).toList());
  }

  void addToArtistList(DocumentReference _value) {
    _artistList.add(_value);
    prefs.setStringList(
        'ff_artistList', _artistList.map((x) => x.path).toList());
  }

  void removeFromArtistList(DocumentReference _value) {
    _artistList.remove(_value);
    prefs.setStringList(
        'ff_artistList', _artistList.map((x) => x.path).toList());
  }

  List<DocumentReference> _imgAssetList = [];
  List<DocumentReference> get imgAssetList => _imgAssetList;
  set imgAssetList(List<DocumentReference> _value) {
    _imgAssetList = _value;
    prefs.setStringList('ff_imgAssetList', _value.map((x) => x.path).toList());
  }

  void addToImgAssetList(DocumentReference _value) {
    _imgAssetList.add(_value);
    prefs.setStringList(
        'ff_imgAssetList', _imgAssetList.map((x) => x.path).toList());
  }

  void removeFromImgAssetList(DocumentReference _value) {
    _imgAssetList.remove(_value);
    prefs.setStringList(
        'ff_imgAssetList', _imgAssetList.map((x) => x.path).toList());
  }

  List<DocumentReference> _assetCollectionList = [];
  List<DocumentReference> get assetCollectionList => _assetCollectionList;
  set assetCollectionList(List<DocumentReference> _value) {
    _assetCollectionList = _value;
    prefs.setStringList(
        'ff_assetCollectionList', _value.map((x) => x.path).toList());
  }

  void addToAssetCollectionList(DocumentReference _value) {
    _assetCollectionList.add(_value);
    prefs.setStringList('ff_assetCollectionList',
        _assetCollectionList.map((x) => x.path).toList());
  }

  void removeFromAssetCollectionList(DocumentReference _value) {
    _assetCollectionList.remove(_value);
    prefs.setStringList('ff_assetCollectionList',
        _assetCollectionList.map((x) => x.path).toList());
  }

  List<DocumentReference> _rightsList = [];
  List<DocumentReference> get rightsList => _rightsList;
  set rightsList(List<DocumentReference> _value) {
    _rightsList = _value;
    prefs.setStringList('ff_rightsList', _value.map((x) => x.path).toList());
  }

  void addToRightsList(DocumentReference _value) {
    _rightsList.add(_value);
    prefs.setStringList(
        'ff_rightsList', _rightsList.map((x) => x.path).toList());
  }

  void removeFromRightsList(DocumentReference _value) {
    _rightsList.remove(_value);
    prefs.setStringList(
        'ff_rightsList', _rightsList.map((x) => x.path).toList());
  }

  DocumentReference? _currentExhibition =
      FirebaseFirestore.instance.doc('/ExhibitionList/YIZzqimn4En9MySdbfRv');
  DocumentReference? get currentExhibition => _currentExhibition;
  set currentExhibition(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _currentExhibition = _value;
    prefs.setString('ff_currentExhibition', _value.path);
  }

  List<String> _imgList = [];
  List<String> get imgList => _imgList;
  set imgList(List<String> _value) {
    _imgList = _value;
    prefs.setStringList('ff_imgList', _value);
  }

  void addToImgList(String _value) {
    _imgList.add(_value);
    prefs.setStringList('ff_imgList', _imgList);
  }

  void removeFromImgList(String _value) {
    _imgList.remove(_value);
    prefs.setStringList('ff_imgList', _imgList);
  }

  List<String> _imgPathList = [];
  List<String> get imgPathList => _imgPathList;
  set imgPathList(List<String> _value) {
    _imgPathList = _value;
    prefs.setStringList('ff_imgPathList', _value);
  }

  void addToImgPathList(String _value) {
    _imgPathList.add(_value);
    prefs.setStringList('ff_imgPathList', _imgPathList);
  }

  void removeFromImgPathList(String _value) {
    _imgPathList.remove(_value);
    prefs.setStringList('ff_imgPathList', _imgPathList);
  }

  List<String> currentCatalogs = [
    'Exhibitions',
    'Food & Beverages',
    'Programming',
    'Retail',
    'Other'
  ];
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
