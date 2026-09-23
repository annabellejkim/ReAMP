import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _sleepvalue = 0.0;
  double get sleepvalue => _sleepvalue;
  set sleepvalue(double value) {
    _sleepvalue = value;
  }

  double _moodvalue = 0.0;
  double get moodvalue => _moodvalue;
  set moodvalue(double value) {
    _moodvalue = value;
  }

  double _focusvalue = 0.0;
  double get focusvalue => _focusvalue;
  set focusvalue(double value) {
    _focusvalue = value;
  }

  double _energyvalue = 0.0;
  double get energyvalue => _energyvalue;
  set energyvalue(double value) {
    _energyvalue = value;
  }

  double _sorenessvalue = 0.0;
  double get sorenessvalue => _sorenessvalue;
  set sorenessvalue(double value) {
    _sorenessvalue = value;
  }

  double _fatiguevalue = 0.0;
  double get fatiguevalue => _fatiguevalue;
  set fatiguevalue(double value) {
    _fatiguevalue = value;
  }

  bool _trainedvalue = false;
  bool get trainedvalue => _trainedvalue;
  set trainedvalue(bool value) {
    _trainedvalue = value;
  }

  double _totalRecoveryScore = 0.0;
  double get totalRecoveryScore => _totalRecoveryScore;
  set totalRecoveryScore(double value) {
    _totalRecoveryScore = value;
  }

  bool _loginError = false;
  bool get loginError => _loginError;
  set loginError(bool value) {
    _loginError = value;
  }

  bool _signupError = false;
  bool get signupError => _signupError;
  set signupError(bool value) {
    _signupError = value;
  }
}
