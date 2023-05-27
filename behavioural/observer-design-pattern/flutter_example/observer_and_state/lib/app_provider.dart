import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int _currentVal = 0;

  int get currentVal => _currentVal;

  void increaseVal() {
    _currentVal++;
    notifyListeners();
  }
}