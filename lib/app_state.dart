import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _RefferralID = [];
  List<DocumentReference> get RefferralID => _RefferralID;
  set RefferralID(List<DocumentReference> _value) {
    _RefferralID = _value;
  }

  void addToRefferralID(DocumentReference _value) {
    _RefferralID.add(_value);
  }

  void removeFromRefferralID(DocumentReference _value) {
    _RefferralID.remove(_value);
  }

  void removeAtIndexFromRefferralID(int _index) {
    _RefferralID.removeAt(_index);
  }
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
