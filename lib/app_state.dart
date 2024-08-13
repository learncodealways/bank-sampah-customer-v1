import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AuthToken = prefs.getString('ff_AuthToken') ?? _AuthToken;
    });
    _safeInit(() {
      _UserRole = prefs.getString('ff_UserRole') ?? _UserRole;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _AuthToken = '';
  String get AuthToken => _AuthToken;
  set AuthToken(String value) {
    _AuthToken = value;
    prefs.setString('ff_AuthToken', value);
  }

  String _UserRole = '';
  String get UserRole => _UserRole;
  set UserRole(String value) {
    _UserRole = value;
    prefs.setString('ff_UserRole', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
