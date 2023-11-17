import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _apiUrlStatement =
          prefs.getString('ff_apiUrlStatement') ?? _apiUrlStatement;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _firstName = prefs.getString('ff_firstName') ?? _firstName;
    });
    _safeInit(() {
      _secondName = prefs.getString('ff_secondName') ?? _secondName;
    });
    _safeInit(() {
      _lastName = prefs.getString('ff_lastName') ?? _lastName;
    });
    _safeInit(() {
      _institutionalEmail =
          prefs.getString('ff_institutionalEmail') ?? _institutionalEmail;
    });
    _safeInit(() {
      _isValidate = prefs.getString('ff_isValidate') ?? _isValidate;
    });
    _safeInit(() {
      _nickname = prefs.getString('ff_nickname') ?? _nickname;
    });
    _safeInit(() {
      _isTeacher = prefs.getString('ff_isTeacher') ?? _isTeacher;
    });
    _safeInit(() {
      _profileImage = prefs.getString('ff_profileImage') ?? _profileImage;
    });
    _safeInit(() {
      _rut = prefs.getString('ff_rut') ?? _rut;
    });
    _safeInit(() {
      _userId = prefs.getInt('ff_userId') ?? _userId;
    });
    _safeInit(() {
      _scheduleId = prefs.getString('ff_scheduleId') ?? _scheduleId;
    });
    _safeInit(() {
      _tokenSession = prefs.getString('ff_tokenSession') ?? _tokenSession;
    });
    _safeInit(() {
      _career = prefs.getString('ff_career') ?? _career;
    });
    _safeInit(() {
      _MessageNickname =
          prefs.getString('ff_MessageNickname') ?? _MessageNickname;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apiUrlStatement = 'https://backend-gkhesykiqa-tl.a.run.app/';
  String get apiUrlStatement => _apiUrlStatement;
  set apiUrlStatement(String _value) {
    _apiUrlStatement = _value;
    prefs.setString('ff_apiUrlStatement', _value);
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String _value) {
    _firstName = _value;
    prefs.setString('ff_firstName', _value);
  }

  String _secondName = '';
  String get secondName => _secondName;
  set secondName(String _value) {
    _secondName = _value;
    prefs.setString('ff_secondName', _value);
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String _value) {
    _lastName = _value;
    prefs.setString('ff_lastName', _value);
  }

  String _institutionalEmail = '';
  String get institutionalEmail => _institutionalEmail;
  set institutionalEmail(String _value) {
    _institutionalEmail = _value;
    prefs.setString('ff_institutionalEmail', _value);
  }

  String _isValidate = '';
  String get isValidate => _isValidate;
  set isValidate(String _value) {
    _isValidate = _value;
    prefs.setString('ff_isValidate', _value);
  }

  String _nickname = '';
  String get nickname => _nickname;
  set nickname(String _value) {
    _nickname = _value;
    prefs.setString('ff_nickname', _value);
  }

  String _isTeacher = '';
  String get isTeacher => _isTeacher;
  set isTeacher(String _value) {
    _isTeacher = _value;
    prefs.setString('ff_isTeacher', _value);
  }

  String _profileImage = '';
  String get profileImage => _profileImage;
  set profileImage(String _value) {
    _profileImage = _value;
    prefs.setString('ff_profileImage', _value);
  }

  String _rut = '';
  String get rut => _rut;
  set rut(String _value) {
    _rut = _value;
    prefs.setString('ff_rut', _value);
  }

  int _userId = 0;
  int get userId => _userId;
  set userId(int _value) {
    _userId = _value;
    prefs.setInt('ff_userId', _value);
  }

  String _scheduleId = '';
  String get scheduleId => _scheduleId;
  set scheduleId(String _value) {
    _scheduleId = _value;
    prefs.setString('ff_scheduleId', _value);
  }

  String _tokenSession = '';
  String get tokenSession => _tokenSession;
  set tokenSession(String _value) {
    _tokenSession = _value;
    prefs.setString('ff_tokenSession', _value);
  }

  String _career = '';
  String get career => _career;
  set career(String _value) {
    _career = _value;
    prefs.setString('ff_career', _value);
  }

  String _MessageNickname = '';
  String get MessageNickname => _MessageNickname;
  set MessageNickname(String _value) {
    _MessageNickname = _value;
    prefs.setString('ff_MessageNickname', _value);
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
