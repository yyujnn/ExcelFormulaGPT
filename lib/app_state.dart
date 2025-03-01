import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  dynamic _instruction = jsonDecode(
      '{\"role\":\"system\",\"content\":\"다음 요청에 해당하는 엑셀 수식을 알려줘. 이때, 답변은 최종적인 엑셀 명령어만 해줘\"}');
  dynamic get instruction => _instruction;
  set instruction(dynamic value) {
    _instruction = value;
  }
}
